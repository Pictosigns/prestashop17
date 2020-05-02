$(document).ready(() => {
  console.log('OVERRIDE')
  let $searchWidget = $('#desktop-header-search-bar > #search_widget');
  let $searchBox = $searchWidget.find('input[type=text]');
  let searchURL = $searchWidget.attr('data-search-controller-url');
  let $searchToggle = $searchWidget.find('#header-search-btn');

  autocomplete($searchWidget, $searchBox, searchURL);

  $searchToggle.on('shown.bs.dropdown', function () {
    setTimeout(function(){
      $searchBox.focus();
    }, 300);
  });

  function autocomplete($searchWidget, $searchBox, searchURL) {
    let xhr;
    let resultsPerPage = 10;
    let allText = $searchBox.data('all-text');

    $searchBox.autoComplete({
      minChars: 2,
      cache: false,
      source: function (query, response) {
        try { xhr.abort(); } catch(e){}
        xhr = $.post(searchURL, {
          s: query,
          resultsPerPage,
          ajax: true
        }, null, 'json')
          .then(function (resp) {
            console.log(resp)
            let showAll = {type: 'all'};
            if (resp.products.length >= resultsPerPage){
              resp.products.push(showAll);
            }
            response(resp.products);
          })
          .fail(response);
      },
      renderItem: function (product, search) {
        if(product.type == 'all') {
          return '<div class="autocomplete-suggestion autocomplete-suggestion-show-all dropdown-item" data-type="all" data-val="'+ search + '">' +
            '<div class="row no-gutters align-items-center">' +
            '<div class="col"><span class="name">' + allText + ' <i class="fa fa-angle-right" aria-hidden="true"></i></span></div>' +
            '</div>' +
            '</div>';
        }
        else {
          let imageHtml = '';
          try{ imageHtml = '<div class="col col-auto col-img"><img class="img-fluid" src="' + product.cover.small.url + '" /></div>';} catch(e){ imageHtml = ''; }
          return '<div class="autocomplete-suggestion dropdown-item" data-url="' + product.url + '">' +
            '<div class="row no-gutters align-items-center">' + imageHtml +
            '<div class="col"><span class="name">' + product.name + '</span><span class="product-price">' + product.price + '</span></div>' +
            '</div>' +
            '</div>';
        }
      },
      onSelect: function (e, term, item) {
        if (item.data('type') == 'all'){
          $searchWidget.find('form').submit();
        } else{
          window.location.href = item.data('url');
        }

      }
    });
  }
});

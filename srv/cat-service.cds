using my.bookshop as my from '../db/data-model';

// @path : 'service/book'
service CatalogService {
    // @readonly entity Books as projection on my.Books;
    entity Books @(restrict : [
        {
            grant : ['READ'],
            to    : ['BookViewer']
        },
        {
            grant : ['*'],
            to    : ['BookManager']
        }
    ]) as projection on my.Books;

    annotate Books with @odata.draft.enabled;

}

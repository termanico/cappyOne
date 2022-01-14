namespace my.bookshop;

using {managed} from '@sap/cds/common';

entity Books : managed {
  key ID     : UUID @(Core.Computed : true);
      ID_old : Integer;
      title  : String;
      stock  : Integer;
}

annotate Books @(Common.SemanticKey : [ID]);

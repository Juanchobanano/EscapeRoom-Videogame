// Cargar y Activar los productos.   
var productList = ds_list_create();

var noAds = ds_map_create();
ds_map_add(noAds, "id", "noads");
ds_map_add(noAds, "title", "No Ads");
ds_map_add(noAds, "price", "$2");
ds_map_add(noAds, "type", "Durable");
 
ds_list_add(productList, noAds);
iap_activate(productList);

ds_map_destroy(noAds);
ds_list_destroy(productList);

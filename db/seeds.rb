# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
strollers = Stroller.create([
    {   
        name: 'Premium 3-in-1 Stroller',
        image_url: "https://cdn.shopify.com/s/files/1/0240/5502/1664/products/product-image-1015052971_540x.jpg?v=1571516432"
    }, 
    { 
        name: 'Bugaboo Lynx Complete Stroller, Black',
        image_url: "https://media.bergdorfgoodman.com/images/f_auto,q_auto:low,ar_5:7,c_fill,dpr_2.0,w_720/01/3492152_m/bugaboo-" 
    },
    {
        name: 'Xari Stroller Chassis',
        image_url: "https://neimanmarcus.scene7.com/is/image/NeimanMarcus/NMZ25ZN_01_m?&wid=790&height=981"
    },
    {
        name: 'Mockingbird Single Stroller',
        image_url: "https://cdn.shopify.com/s/files/1/0023/9691/3753/products/MB19_3QR_Blk-Penny-Drops_27883_800x960_crop_center.jpg?v=1584046156"
    },
    {
        name: ' Luxury PU Baby Stroller Toddler Stroller',
        image_url: "https://cdn.shopify.com/s/files/1/0085/7597/5484/products/ma047_8_1200x.jpg?v=1587361197"
    },
    {
        name: 'wisesonle 739 Pram Cart Baby Stroller',
        image_url: "https://gloimg.gbtcdn.com/images/pdm-product-pic/Electronic/2019/04/15/source-img/20190415111941_23135.jpg_500x500.jpg"
    },
])

reviews = Review.create([
    {
        title: "Best Stroller Ever",
        description: "I love this stroller it rides smooth and it’s so much space ! Shipping took forever due to the virus but it was worth the wait",
        score: 5,
        stroller: strollers.first
    },
    {
        title: "Beautiful stroller",
        description: "I LOVE this stroller. It’s easy to travel and has great tires. I live in the country with thick rock gravel roads and dirt walking trails around and this stroller has no problem going through either terrain nor is my daughter thrown around like other strollers.",
        score: 4,
        stroller: strollers.first
    }
])


Spree::Passenger.joins(:order).where({person:{id: 2}})
#ActiveRecord::StatementInvalid: Mysql2::Error: Unknown column 'person.id' in 'where clause': 



SELECT  `spree_people`.* 
FROM `spree_people` 
INNER JOIN `spree_orders` 
ON `spree_orders`.`id` = `spree_people`.`order_id` 

WHERE `spree_people`.`type` IN ('Spree::Passenger') AND `person`.`id` = 2 LIMIT 11
WHERE `spree_people`.`type` IN ('Spree::Passenger') AND `passenger`.`id` = 2 LIMIT 11
WHERE `spree_people`.`type` IN ('Spree::Passenger') AND `order`.`id` = 2 LIMIT 11
WHERE `spree_people`.`type` IN ('Spree::Passenger') AND (order.id = 23) LIMIT 11

Spree::Passenger.joins(:order).where(order: {id: 2})

Book.joins(:comments).where("comments.id = 2")
Book.joins(:comments).where("spree_orders.id = 2")

Spree::Passenger.joins(:order).where("spree_orders.id = 2")

User.where({ created_at: (Time.now.midnight - 1.day)..Time.now.midnight }) Date.parse("10/10/2010")
User.where({ created_at: (Date.parse("01/01/2019"))..Time.now.midnight }) 

created_at BETWEEN '2019-01-01 00:00:00.100000' AND '2020-01-01 00:00:00.100000'

Spree::Passenger.joins( order: :product).where("payment_state = 'paid' and created_at BETWEEN '2019-01-01 00:00:00.100000' AND '2020-01-01 00:00:00.100000'" )

#ActiveRecord::StatementInvalid: Mysql2::Error: Column 'created_at' in where clause is ambiguous: 

SELECT  `spree_people`.* 
FROM `spree_people` 
INNER JOIN `spree_orders` 
ON `spree_orders`.`id` = `spree_people`.`order_id` 
INNER JOIN `spree_line_items` ON `spree_line_items`.`order_id` = `spree_orders`.`id` 

WHERE `spree_people`.`type` IN ('Spree::Passenger') AND (payment_state = 'paid' and created_at BETWEEN '2019-01-01 00:00:00.100000' AND '2020-01-01 00:00:00.100000') LIMIT 11

Spree::Passenger.joins( order: :line_items).where("payment_state = 'paid' and created_at BETWEEN '2019-01-01 00:00:00.100000' AND '2020-01-01 00:00:00.100000'" )
Spree::Passenger.joins( order: :line_items).where(line_items: {})

Report.joins(server: :platform)  .where(:platforms => {:company_id => 5}).all

Spree::Passenger.joins( order: :line_items).where(line_items: {"product_id = 2 and product_id = 4"})

sp = Spree::Variant.where(:product_id => [1,2])
sp = Spree::Variant.where(:product_id => [2,4]).count

comments = @males.map {|user| user.comments.map(&:content)}.flatten

sp = Spree::Variant.where(:product_id => [1,2]).pluck(:id, :title)

Spree::Passenger.joins( :order: :line_items).where("spree_line_items.product_id = 2")

Company.joins(:price_movements,:goods_movements).where("goods_movement.date = price_movement.date")

Reservation.joins(:user).joins(:table)

Spree::Passenger.joins(:order).joins(:line_items).where("spree_line_items.product_id = 2")

Reservation.joins('INNER JOIN "tables" ON "tables"."id" = "reservations"."table_id" INNER JOIN "users" ON "users"."id" = "reservations"."user_id"')

Spree::Passenger.joins('INNER JOIN `spree_orders` ON `spree_orders`.`id` = `spree_people`.`order_id`')

	["SELECT `spree_people`.* FROM `spree_people` INNER JOIN `spree_orders` ON `spree_orders`.`id` = `spree_people`.`order_id` WHERE `spree_people`.`type` IN ('Spree::Passenger')"]


Spree::Passenger.joins('INNER JOIN `spree_orders` ON `spree_orders`.`id` = `spree_people`.`order_id`').joins('INNER JOIN `spree_line_items` ON `spree_line_items`.`order_id` = `spree_orders`.`id`').where("spree_line_items.product_id = 2")

Spree::Passenger.joins( order: :line_items).where({:spree_orders => {id: 116}})

#<ActiveRecord::Relation [#<Spree::Passenger id: 36, firstname: "JORGE PAULO", lastname: "CADEMARTORI", secondlastname: "DONOSO", email: "jcademartori@gmail.com", birthdate: "1974-05-01", phone: nil, cellular: nil, type: "Spree::Passenger", order_id: 116, address_id: 111, rut: "126217609", user_relationship: nil, percentage_given: nil, relative_name: "Elizabeth", relative_phone: "+56 9 95195630", gender: "male", buyer: true, contact_type: nil, alternative_contact_code_phone: nil, alternative_contact_phone: nil>]>


Spree::Passenger.joins( order: :line_items).where({:spree_line_items => {product_id: 2}})

MobileApplication.joins(:events).where('events.expiry_date >= ?', Time.zone.now)
Spree::Passenger.joins( order: :line_items).where('`spree_line_items`.`product_id` = ?', [2,4])
	[
		Hbookmark.joins("INNER JOIN bookmarks ON hbookmarks.bookmark_id = bookmarks.id")
         .select("bookmarks.short_name, hbookmarks.id, ( select count(*) from clickcomments where clickcomments.click_id = hbookmarks.id ) as comments")
         .where("bookmarks.user_id = ? AND hbookmarks.create_date < DATE_SUB(NOW(), INTERVAL 1 YEAR )", current_user.id)
         .having("comments = 0")
         .order("hbookmarks.create_date desc")
    ]

Spree::Passenger.joins( order: :line_items).where("spree_people.id > ?", 500).where("spree_orders.payment_state = ?","paid").where("spree_line_items.variant_id = ?", 8)  

lineItems = Spree::LineItem.joins(:product).where("spree_products.id = ?", {2,4})

SELECT `spree_people`.* 
FROM `spree_people` 
INNER JOIN `spree_orders` ON `spree_orders`.`id` = `spree_people`.`order_id` 
INNER JOIN `spree_line_items` ON `spree_line_items`.`order_id` = `spree_orders`.`id`
INNER JOIN `spree_variants` ON `spree_variants`.`id` = `spree_line_items`.`variant_id`
INNER JOIN `spree_products` ON `spree_products`.`id` = `spree_variants`.`product_id`
WHERE `spree_people`.`type` IN ('Spree::Passenger') 
	AND (spree_people.id > 500) AND (spree_orders.payment_state = 'paid') AND (spree_line_items.variant_id = 8)

#--------Lo que funcionó:

Spree::Variant.joins("INNER JOIN `spree_products` ON `spree_products`.`id` = `spree_variants`.`product_id`").where("`spree_products`.`id` = 1 OR `spree_products`.`id` = 4")

Spree::LineItem.joins("INNER JOIN `spree_variants` ON `spree_variants`.`id` = `spree_line_items`.`variant_id`").joins("INNER JOIN `spree_products` ON `spree_products`.`id` = `spree_variants`.`product_id`").where("`spree_products`.`id` = 1 OR `spree_products`.`id` = 4")

Spree::Passenger
  .joins("INNER JOIN `spree_orders` ON `spree_orders`.`id` = `spree_people`.`order_id`")
  .joins("INNER JOIN `spree_line_items` ON `spree_line_items`.`order_id` = `spree_orders`.`id`")
  .joins("INNER JOIN `spree_variants` ON `spree_variants`.`id` = `spree_line_items`.`variant_id`")
  .joins("INNER JOIN `spree_products` ON `spree_products`.`id` = `spree_variants`.`product_id`")
  .where("`spree_orders`.`payment_state` = 'paid' and completed_at BETWEEN '2019-01-01 00:00:00.100000' AND '2020-01-01 00:00:00.100000'")
  .where("`spree_products`.`id` = 2 OR `spree_products`.`id` = 4").to_sql
# =>
# "SELECT `spree_people`.* 
# FROM `spree_people` 
# INNER JOIN `spree_orders` ON `spree_orders`.`id` = `spree_people`.`order_id` 
# INNER JOIN `spree_line_items` ON `spree_line_items`.`order_id` = `spree_orders`.`id` 
# INNER JOIN `spree_variants` ON `spree_variants`.`id` = `spree_line_items`.`variant_id` 
# INNER JOIN `spree_products` ON `spree_products`.`id` = `spree_variants`.`product_id` 
# WHERE `spree_people`.`type` IN ('Spree::Passenger') 
#   AND (`spree_orders`.`payment_state` = 'paid' and completed_at BETWEEN '2019-01-01 00:00:00.100000' AND '2020-01-01 00:00:00.100000')
#   AND (`spree_products`.`id` = 1 OR `spree_products`.`id` = 4)"   
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Specialist.create(name:"専門家の名前1", expertise_property:"得意な物件です", consultation_item:"得意な相談項目です", qualification:"資格の内容です", description:"専門家の説明です。", career:"専門家の経歴です。", newly_built_house:1 , used_house:1 , newly_built_condominium:1 , used_condominium:1 , land:1 , price_and_pepayment:1 , building_and_structure:1 , floor_plan:1 , surrounding_environment:1 , family_relatives:1, other_point:1 )
Specialist.create(name:"専門家の名前2", expertise_property:"得意な物件です", consultation_item:"得意な相談項目です", qualification:"資格の内容です", description:"専門家の説明です。", career:"専門家の経歴です。", newly_built_house:2 , used_house:2 , newly_built_condominium:5 , used_condominium:5 , land:3 , price_and_pepayment:2 , building_and_structure:3 , floor_plan:1 , surrounding_environment:1 , family_relatives:4, other_point:2 )
Specialist.create(name:"専門家の名前3", expertise_property:"得意な物件です", consultation_item:"得意な相談項目です", qualification:"資格の内容です", description:"専門家の説明です。", career:"専門家の経歴です。", newly_built_house:5 , used_house:4 , newly_built_condominium:3 , used_condominium:3 , land:5 , price_and_pepayment:4 , building_and_structure:2 , floor_plan:5 , surrounding_environment:4 , family_relatives:4, other_point:1 )

PropertyList.create(property_type:"新築戸建")
PropertyList.create(property_type:"中古戸建")
PropertyList.create(property_type:"新築マンション")
PropertyList.create(property_type:"中古マンション")
PropertyList.create(property_type:"土地のみ")

ConsultationMatter.create(item:"価格・返済")
ConsultationMatter.create(item:"建物・構造")
ConsultationMatter.create(item:"間取り")
ConsultationMatter.create(item:"周辺環境")
ConsultationMatter.create(item:"家族・親族")
ConsultationMatter.create(item:"その他")

Customer.create(name: "kokyaku1", mail: "kokyaku1@mail.com")
Customer.create(name: "kokyaku2", mail: "kokyaku2@mail.com")

Property.create(property_type: 1, url: "url/bukkenjouhou1.jp", other: "sonota1", trader: "XXhome", price: 30000, newly_built_house:1 , used_house:0 , newly_built_condominium:0 , used_condominium:0 , land:0 , price_and_pepayment:1 , building_and_structure:0 , floor_plan:1 , surrounding_environment:0 , family_relatives:1, other_point:0, customer_id:1 )
Property.create(property_type: 2, url: "url/bukkenjouhou2.jp", other: "sonota2", trader: "XXhome", price: 50000, newly_built_house:0 , used_house:1 , newly_built_condominium:0 , used_condominium:0 , land:0 , price_and_pepayment:1 , building_and_structure:0 , floor_plan:0 , surrounding_environment:1 , family_relatives:0, other_point:0, customer_id:2 )
Property.create(property_type: 3, url: "url/bukkenjouhou3.jp", other: "sonota3", trader: "XXhome", price: 110000, newly_built_house:0 , used_house:0 , newly_built_condominium:1 , used_condominium:0 , land:0 , price_and_pepayment:0 , building_and_structure:0 , floor_plan:1 , surrounding_environment:1 , family_relatives:0, other_point:0 )

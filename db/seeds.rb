# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Property.create(property_type: 1, url: "url/bukkenjouhou1.jp", other: "sonota1", trader: "XXhome", price: 30000)
Property.create(property_type: 2, url: "url/bukkenjouhou2.jp", other: "sonota2", trader: "XXhome", price: 50000)
Property.create(property_type: 3, url: "url/bukkenjouhou3.jp", other: "sonota3", trader: "XXhome", price: 110000)

Specialist.create(name:"専門家の名前1", expertise_property:"得意な物件です", consultation_item:"得意な相談項目です", qualification:"資格の内容です", description:"専門家の説明です。", career:"専門家の経歴です。")
Specialist.create(name:"専門家の名前2", expertise_property:"得意な物件です", consultation_item:"得意な相談項目です", qualification:"資格の内容です", description:"専門家の説明です。", career:"専門家の経歴です。")
Specialist.create(name:"専門家の名前3", expertise_property:"得意な物件です", consultation_item:"得意な相談項目です", qualification:"資格の内容です", description:"専門家の説明です。", career:"専門家の経歴です。")

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
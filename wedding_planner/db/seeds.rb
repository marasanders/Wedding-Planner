# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Guest.destroy_all
PlaceCard.destroy_all

robin = Guest.create(mailing_title:"Mr. & Mrs. Robert Thomas", first_name: "Robert", last_name: "Thomas",
                          spouse_first_name: "Anne",spouse_last_name: "Thomas",address_line1: "100 Main Street",address_line2: "",
                          city: "Minneapolis",state: "MN",zip: "44092",country: "USA", relationship:"Friend",
                          email: "sandersmara@gmail.com",spouse_email:" ", send_invitation:true,
                          gift_received: " ",thank_you_sent:false )
john = Guest.create(mailing_title:"Mr. & Mrs. John Smith", first_name: "John", last_name: "Smith",
                          spouse_first_name: "Jane",spouse_last_name: "Smith",address_line1: "12345 Front Street",address_line2: "",
                          city: "Frederick",state: "MD",zip: "20052",country: "USA", relationship:"Relative",
                          email: "sandersmara@gmail.com",spouse_email:" ", send_invitation:true,
                          gift_received: "",thank_you_sent:false )


robinplacecard = PlaceCard.create(name: "Mr. Robert Thomas", table_number:0, print: true, guest_id: robin)
anneplacecard = PlaceCard.create(name: "Mrs. Anne Thomas", table_number:0, print: true, guest_id: robin)
johnplacecard = PlaceCard.create(name: "Mr. John Smith", table_number:1, print: true, guest_id: john)
janeplacecard = PlaceCard.create(name: "Mrs. Jane Smith", table_number:1, print: true, guest_id: john)

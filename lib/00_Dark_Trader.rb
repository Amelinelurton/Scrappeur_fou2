require 'rspec'
require 'nokogiri'
require 'open-uri'



def trader()


    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

    names_crypto = []
    page.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div").each{|n|
        names_crypto.push(n.text)}

    
    valeur_crypto = []
    page.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a/span").each{|v|
        valeur_crypto.push(v.text)}         

    array_crypto = names_crypto.zip(valeur_crypto).map! { |k, v| { k => v}}    

    return puts array_crypto

end    

trader

module CurrencyExchange

  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.
  def self.rate(date, from_currency, to_currency)
    # TODO: calculate and return rate

    #recieves info from JSON
    require 'json'
    jsonFile = File.read('./data/eurofxref-hist-90d.json')
    parsedFile = JSON.parse(jsonFile)
    return self.performCalc(parsedFile,date,from_currency,to_currency)

    #having an "easier to ask for forgiveness system" call the right function based
    #on the input file that is seen
  rescue Exception => e
    print("Not a json")

    end



  def self.performCalc(parsedFile,date,from_currency,to_currency)
    #check date valid first
    if parsedFile[date.to_s] == nil
     # raise "The date was invalid"
    else
      #only tries to calculate if date true
      fromCurrInt = parsedFile[date.to_s][from_currency.to_s]
      toCurrInt = parsedFile[date.to_s][to_currency.to_s]

      #everything is based on EUR so would just be 1
      if to_currency.to_s == "EUR"
        toCurrInt = 1
      end
      if from_currency.to_s == "EUR"
        fromCurrInt = 1
      end

      #checks both currencies are valid
      if fromCurrInt == nil
       raise "The currency FROM is invalid"
       return (1*toCurrInt)

      elsif toCurrInt == nil
       raise "The currency TO is invalid"
       return(1/fromCurrInt)

      else
        #returns if fine
        return ((1/fromCurrInt) * toCurrInt)

      end

    end
  end

end

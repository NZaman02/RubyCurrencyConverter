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

    #check date valid frist
    if parsedFile[date.to_s] == nil
     raise "The date was invalid"
    else
      #only tries to calculate if date true
      fromCurrInt = parsedFile[date.to_s][from_currency.to_s]
      toCurrInt = parsedFile[date.to_s][to_currency.to_s]

      #checks both currencies are valid
      if parsedFile[date.to_s][from_currency.to_s] == nil
       raise "The currency FROM is invalid"
       return (1*toCurrInt)

      elsif parsedFile[date.to_s][to_currency.to_s] == nil
       raise "The currency TO is invalid"
       return(1/fromCurrInt)

      else
        #returns if fine
        return ((1/fromCurrInt) * toCurrInt)

      end

    end

  end

end

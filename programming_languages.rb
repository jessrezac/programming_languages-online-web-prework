require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, languages_by_style|
    languages_by_style.each do |language, details|
      new_hash[language] = details
      if new_hash[language].include?(:style)
        new_hash[language][:style] << style
        binding.pry

      else
        new_hash[language][:style] = []
        new_hash[language][:style] << style
      end
    end
  end

  new_hash

end

reformat_languages(languages)

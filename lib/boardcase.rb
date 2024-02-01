class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :case_value, :case_name
    
    def initialize(id)
      #TO DO : doit régler sa valeur, ainsi que son numéro de case
      @case_value = "_".white #le tiret du bas cest pour donné une valeur direct au bloc
      @case_id = id
    end
    
  end

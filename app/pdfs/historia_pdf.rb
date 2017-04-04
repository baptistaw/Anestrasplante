class HistoriaPdf < Prawn::Document
  def initialize(patient)
    super :page_size => "A4", :page_layout => :landscape, :size => 9
    @patient = patient
    @patients = Patient.order("apellido ASC").all

    font_size 10

    text "Unidad Bi Institucional"
    text "Programa Nacional de Trasplante Hepático"
    text "Servicio de Anestesiología"

     move_down 2

    text "Historia Clínica Anestesiológica del Paciente"

    move_down 2

    text @patient.nombre
    text @patient.apellido
    text @patient.ci
    text @patient.fnr
    text @patient.sexo
    text @patient.f_nacimiento.to_s
    text @patient.procedencia
    text @patient.f_ingreso.to_s
    text @patient.prestador

    move_down 15

    stroke_color "531290"
    stroke_horizontal_rule

    text "Datos Generales"
    text "HEPATOPATIA"
    if @patient.corevaluations.exists?
      text "Etiologia" + @patient.last_corevaluation.causa_hepatopatia
      text "Pxif: " + @patient.last_corevaluation.pxif.to_s + " Meld: " + @patient.last_corevaluation.meld.to_s + " Melde: " + @patient.last_corevaluation.melde.to_s + " Child: " + @patient.last_corevaluation.child
      text "RIESGO ANESTESICO"
      text "Asa: " + @patient.last_corevaluation.asa
      text "Maximos riesgos: " + @patient.last_corevaluation.maximos_riesgos
      text "LISTA DE TRASPLANTE"
      if @patient.last_corevaluation.ingresa_lista == 'SI'
        text "Ingresa a Lista de Trasplante"
        text "Fecha Ingreso a Lista: " + @patient.f_ingreso.to_s
        text "Candidato fastrack: " + @patient.last_corevaluation.candidato_fastrack
        text "Candidato tranexamico: " + @patient.last_corevaluation.candidato_tranexamico
      else
        text "No Ingresa a Lista de Trasplante"
        text "Causa de No Ingreso: " + @patient.last_corevaluation.causa_no_ingreso
        text "Estudios pendientes para el ingreso: " + @patient.last_corevaluation.estudios_pendientes
      end
    else
      text "Sin datos"
    end

    move_down 2

    text "El paciente presentó en algún momento de la evolución las siguienes patologías no vinculadas con su Hepatopatia:"
    if @patient.antecedents.exists? 
      if @patient.last_antecedent.enf_coronaria == 'SI'
        text "Enfermedad Coronaria"
      end
      if @patient.last_antecedent.hta == 'SI'
        text "HTA"
      end
      if @patient.last_antecedent.valvulopatia == 'SI'
        text "Valvulopatia"
      end
      if @patient.last_antecedent.arritmias_marcapaso == 'SI'
        text "Arritmias/Marcapaso"
      end
      if @patient.last_antecedent.fumador == 'SI'
        text "Fumador"
      end
      if @patient.last_antecedent.epoc == 'SI'
        text "EPOC"
      end
      if @patient.last_antecedent.asma == 'SI'
        text "Asma"
      end
      if @patient.last_antecedent.nefropatia_uropatia == 'SI'
        text "Nefropatia/Uropatia"
      end
      if @patient.last_antecedent.diabetes == 'SI'
        text "Diabetes"
      end
      if @patient.last_antecedent.hipotiroidismo == 'SI'
        text "Hipotiroidismo"
      end
      if @patient.last_antecedent.hipertiroidismo == 'SI'
        text "Hipertiroidismo"
      end
      if @patient.last_antecedent.rge_gastritis_ulcus == 'SI'
        text "RGE/Gastritis/Ulcus GD"
      end
      if @patient.last_antecedent.alergias == 'SI'
        text "Alergia"
      end
      if @patient.last_antecedent.cirugia_abdominal == 'SI'
        text "Cirugia Abdominal Previa"
      end
      if @patient.last_antecedent.comentarios
        text "Notas: " + @patient.last_antecedent.comentarios
      else
      end
    else
      text "Sin datos"
    end
    text "Antecedentes Personales Generales"

  end
 end 
end 

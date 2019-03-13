# frozen_string_literal: true

module FulfillmentText
  module_function

  def process(params)
    key = params.keys.first
    value = params.values.first

    case key
    when 'calendario_evento'
      process_calendario(value)
    end
  end

  def process_calendario(value)
    case value
    when 'inicio de curso'
      'El 28 de enero inician los cursos de licenciatura y posgrado.'
    when 'ceremonia de inicio de cursos'
      'El 28 de enero se realizará la ceremonia de inicio de cursos.'
    when 'inicio de actividades'
      'El 7 de enero inician las actividades docentes y administrativas.'
    when 'pago de reinscripcion'
      'Del 2 al 9 de enero se podrá realizar el pago de reinscripción en licenciatura.'
    when 'pago de inscripcion'
      'Del 2 al 9 de enero se podrá realizar el pago de inscripción para nuevos estudiantes de licenciatura.'
    when 'reinscripcion'
      'Del 14 al 16 se podrá realizar la reinscripción para estudiantes de licenciatura.'
    when 'inscripción'
      'Del 14 al 16 se podrá realizar la inscripción a nuevos estudiantes de licenciatura.'
    when 'periodo vacacional'
      'Del 20 al 04 de Enero y 15 al 26 de Abril'
    when 'semana lince'
      'Del 20 al 24 de Mayo'
    end
  end
end

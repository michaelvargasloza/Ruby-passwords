def generar_contrasena(longitud)
  caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-+=<>?"
  contrasena = ""

  longitud.times do
    caracter_aleatorio = caracteres[rand(caracteres.length)]
    contrasena += caracter_aleatorio
  end

  return contrasena
end

# Solicitar la longitud deseada para la contraseña
print "Ingrese la longitud deseada de la contraseña: "
longitud = gets.chomp.to_i

if longitud <= 0
  puts "Por favor, ingrese una longitud válida."
else
  # Generar y mostrar la contraseña
  contrasena_generada = generar_contrasena(longitud)
  puts "Contraseña generada: #{contrasena_generada}"
end
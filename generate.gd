extends Sprite2D

var TEXT_VARIATIONS = [
	 "res://Texts/Atas Kanan.bmp", 
	 "res://Texts/Atas Kiri.bmp", 
	 "res://Texts/atas_atas.bmp", 
	 "res://Texts/Atas_bawah.bmp",
	 "res://Texts/Bawah Atas.bmp", 
	 "res://Texts/Bawah Bawah.bmp", 
	 "res://Texts/Bawah Kanan.bmp",
	 "res://Texts/Bawah Kiri.bmp",
	 "res://Texts/Kanan atas.bmp", 
	 "res://Texts/Kanan Bawah.bmp", 
	 "res://Texts/Kanan Kanan.bmp", 
	 "res://Texts/Kanan Kiri.bmp", 
	 "res://Texts/Kiri - kiri.bmp", 
	 "res://Texts/Kiri atas.bmp", 
	 "res://Texts/Kiri Bawah.bmp", 
	 "res://Texts/Kiri kanan.bmp"
]

func _ready():
	variate_texture()
	check(InputEventKey)
	

var current_path = ""

var Kanan_textures = [
	"res://Texts/Atas Kanan.bmp",
	"res://Texts/Kiri Kanan.bmp",
	"res://Texts/Kanan Kanan.bmp",
	"res://Texts/Bawah Kanan.bmp"
]

var Kiri_textures = [
	"res://Texts/Atas Kiri.bmp",
	"res://Texts/Kiri kiri.bmp",
	"res://Texts/Kanan Kiri.bmp",
	"res://Texts/Bawah Kiri.bmp"
]

var Atas_textures = [
	"res://Texts/atas_atas.bmp",
	"res://Texts/Bawah Atas.bmp",
	"res://Texts/Kanan atas.bmp",
	"res://Texts/Kiri atas.bmp"
]

var Bawah_textures = [
	"res://Texts/Atas_bawah.bmp",
	"res://Texts/Kiri Bawah.bmp",
	"res://Texts/Kanan Bawah.bmp",
	"res://Texts/Bawah Bawah.bmp"
]

func variate_texture():
	if TEXT_VARIATIONS.size() > 1:
		var text_id = randi() % TEXT_VARIATIONS.size()
		current_path = TEXT_VARIATIONS[text_id]
		texture = load(current_path)
		
func check(event):
	if event is InputEventKey and event.is_pressed() :
		if event.keycode == KEY_D and current_path in Kanan_textures:
			print("in Paris")	
		if event.keycode == KEY_A and current_path in Kiri_textures:
			print("in Japan")
		if event.keycode == KEY_W and current_path in Atas_textures:
			print("in Indo")
		if event.keycode == KEY_S and current_path in Bawah_textures:
			print("in Korea")

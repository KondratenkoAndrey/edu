package main

type Hero struct {
	On    bool
	Ammo  int
	Power int
}

func (h *Hero) Shoot() bool {
	if h.On && h.Ammo > 0 {
		h.Ammo--
		return true
	}
	return false
}

func(h *Hero) RideBike() bool {
	if h.On && h.Power > 0 {
		h.Power--
		return true
	}
	return false
}

func main() {
	testStruct := new(Hero)
}

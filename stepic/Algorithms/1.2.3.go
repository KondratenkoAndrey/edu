package main

import "fmt"

func main() {
	var bufferSize, n int
	fmt.Scan(&bufferSize, &n)

	input := make([]Packet, n)

	for i := range input {
		var arrival, duration int
		fmt.Scan(&arrival, &duration)
		input[i] = newPacket(arrival, duration)
	}

	processQueue(input, bufferSize)

	for i := range input {
		fmt.Println(input[i].started)
	}
}

func processQueue(input []Packet, bufferSize int) {
	buffer := Buffer{size: bufferSize}
	i := 0
	j := 0
	var busyPacket *Packet
	for j < len(input) || !buffer.IsEmpty() {
		if busyPacket == nil && !buffer.IsEmpty(){
			busyPacket = buffer.Top()
			busyPacket.started = i
			busyPacket.processed = i + busyPacket.duration
		}

		if busyPacket != nil && busyPacket.processed == i {
			buffer.Dequeue()
			busyPacket = nil
			continue
		}

		if j < len(input) && input[j].arrival == i {
			if buffer.NotFull() {
				buffer.Queue(&input[j])
				j++
				continue
			}
			j++
			continue
		}
		i++
	}
}

type Buffer struct {
	data []*Packet
	size int
}

func (buffer *Buffer) Queue(packet *Packet) {
	buffer.data = append(buffer.data, packet)
}

func (buffer *Buffer) Top() *Packet {
	return buffer.data[0]
}

func (buffer *Buffer) Len() int {
	return len(buffer.data)
}

func (buffer *Buffer) Dequeue() *Packet {
	packet := buffer.data[0]
	buffer.data = buffer.data[1:]
	return packet
}

func (buffer *Buffer) NotFull() bool {
	return buffer.Len() < buffer.size
}

func (buffer *Buffer) IsEmpty() bool {
	return buffer.Len() == 0
}

type Packet struct {
	arrival   int
	duration  int
	processed int
	started   int
}

func newPacket(arrival int, duration int) Packet {
	packet := Packet{}
	packet.arrival = arrival
	packet.duration = duration
	packet.processed = 0
	packet.started = -1

	return packet
}

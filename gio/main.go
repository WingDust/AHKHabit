package main

import (
	"flag"
	"fmt"
	"image/color"
	"log"
	"os"
	"runtime"
	"strings"

	"gioui.org/app"
	"gioui.org/io/key"
	"gioui.org/layout"
	"gioui.org/op"
	"gioui.org/text"
	"gioui.org/unit"
	"gioui.org/widget"
	"gioui.org/widget/material"
)

var WorkDir = ""
var DefaultInfo = ""

func Getwd() string {
	dir, err := os.Getwd()
	if err != nil {
		log.Fatal(err)
	}
	var ss []string
	if runtime.GOOS == "windows" {
		ss = strings.Split(dir, "\\")
	} else {
		ss = strings.Split(dir, "/")
	}

	currentDirName := ss[len(ss)-1]

	return currentDirName
	// fmt.Println("Current Directory Name: ", currentDirName)
}

func init() {
	WorkDir = Getwd()
	// fmt.Println("WorkDir", WorkDir)
	flag.StringVar(&DefaultInfo, "info", Getwd(), "show info")
	flag.Parse()
}

func main() {
	go func() {
		// create new window
		w := new(app.Window)
		w.Option(app.Title(""))
		w.Option(app.Size(unit.Dp(600), unit.Dp(400)))
		err := run(w)
		if err != nil {
			log.Fatal(err)
		}
		os.Exit(0)

		// listen for events in the window
		// for {
		// 	w.Event()
		// }
	}()
	app.Main()
}

func run(window *app.Window) error {
	theme := material.NewTheme()
	var ops op.Ops
	var startButton widget.Clickable
	// for e := range w.Events() {
	//
	// 		switch e := window.Event().(type) {
	//
	// 		}
	//
	// }
	for {
		switch e := window.Event().(type) {
		case app.DestroyEvent:

			// fmt.Println("ee", e)
			return e.Err
		case app.FrameEvent:

			// fmt.Println("e", e)
			// This graphics context is used for managing the rendering state.
			gtx := app.NewContext(&ops, e)

			// // Define an large label with an appropriate text:
			// title := material.H1(theme, "Hello, Gio")
			// // material.H
			//
			// // Change the color of the label.
			// maroon := color.NRGBA{R: 127, G: 0, B: 0, A: 255}
			// title.Color = maroon
			//
			// // Change the position of the label.
			// title.Alignment = text.Middle
			//
			// // Draw the label to the graphics context.
			// title.Layout(gtx)

			// btn.Layout(gtx)
			// layout.Flex{
			// 	Axis: layout.Vertical,
			// 	// Spacing: layout.SpaceEnd,
			// 	Spacing: layout.SpaceBetween,
			// }.Layout(gtx,
			// 	layout.Rigid(func(gtx layout.Context) layout.Dimensions {
			// 		title := material.H1(theme, "Hello, Gio")
			//
			// 		maroon := color.NRGBA{R: 127, G: 0, B: 0, A: 255}
			// 		title.Color = maroon
			//
			// 		title.Alignment = text.Middle
			// 		return title.Layout(gtx)
			// 	}),
			// 	layout.Rigid(layout.Spacer{Height: unit.Dp(25)}.Layout),
			// 	layout.Rigid(func(gtx layout.Context) layout.Dimensions {
			// 		btn := material.Button(theme, &startButton, "确认")
			// 		return btn.Layout(gtx)
			// 	}),
			// )
			layout.Flex{
				Axis: layout.Vertical,
				// Spacing: layout.SpaceEnd,
				Spacing: layout.SpaceBetween,
			}.Layout(gtx,

				layout.Rigid(func(gtx layout.Context) layout.Dimensions {
					title := material.H1(theme, DefaultInfo)

					maroon := color.NRGBA{R: 127, G: 0, B: 0, A: 255}
					title.Color = maroon

					title.Alignment = text.Middle
					return title.Layout(gtx)
				}),

				layout.Rigid(layout.Spacer{Height: unit.Dp(25)}.Layout),
				layout.Rigid(func(gtx layout.Context) layout.Dimensions {
					margin := layout.Inset{Top: unit.Dp(25), Bottom: unit.Dp(25), Right: unit.Dp(25), Left: unit.Dp(25)}

					return margin.Layout(gtx,
						(func(gtx layout.Context) layout.Dimensions {
							btn := material.Button(theme, &startButton, "确认")
							return btn.Layout(gtx)
						}),
					)
				},
				))

			// Pass the drawing operations to the GPU.
			e.Frame(gtx.Ops)
		case key.Event:
			switch e.Name {
			case key.NameEscape:
				fmt.Println("esc")
				// return nil
			}

		}
	}
}

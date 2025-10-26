package main

import (
	"fmt"
	"os"
	"path/filepath"

	"lets-go-programming-v2025-autumn-spbstu-40002/internal/cbr"
	"lets-go-programming-v2025-autumn-spbstu-40002/internal/convert"
	"lets-go-programming-v2025-autumn-spbstu-40002/internal/output"
)

func main() {
	// Тестируем парсинг XML
	fmt.Println("Testing XML parsing...")
	valCurs, err := cbr.ParseXML("data/input.xml")
	if err != nil {
		fmt.Printf("Error parsing XML: %v\n", err)
		return
	}
	fmt.Printf("Successfully parsed %d currencies\n", len(valCurs.Valutes))

	// Тестируем конвертацию и сортировку
	fmt.Println("Testing conversion and sorting...")
	currencies := convert.ConvertAndSort(valCurs)
	fmt.Printf("Converted and sorted %d currencies\n", len(currencies))

	// Показываем первые 5 валют
	fmt.Println("Top 5 currencies by value:")
	for i, c := range currencies {
		if i >= 5 {
			break
		}
		fmt.Printf("%d. %s: %.4f\n", i+1, c.CharCode, c.Value)
	}

	// Тестируем сохранение в JSON
	fmt.Println("Testing JSON output...")
	outputDir := "output"
	err = os.MkdirAll(outputDir, 0755)
	if err != nil {
		fmt.Printf("Error creating output directory: %v\n", err)
		return
	}

	var outputCurrencies []interface{}
	for _, c := range currencies {
		outputCurrencies = append(outputCurrencies, c)
	}

	err = output.SaveToJSON(outputCurrencies, filepath.Join(outputDir, "test_output.json"))
	if err != nil {
		fmt.Printf("Error saving to JSON: %v\n", err)
		return
	}

	fmt.Println("Test completed successfully!")
}

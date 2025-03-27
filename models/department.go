package models

import "time"

type Department struct {
	CreatedAt  time.Time // Automatically managed by GORM at create time
	UpdatedAt  time.Time // Automatically managed by GORM at updated time
	Name       string
	DirectorId uint
	Director   User   `gorm:"foreignKey:DirectorId; references:ID"`
	ID         string `gorm:"primary_key,autoIncrement:false"`
}

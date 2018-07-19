package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {

	engine := gin.Default()

	engine.Static("/", "./static")

	listen := os.Getenv("port")
	engine.Run(":" + listen)

}

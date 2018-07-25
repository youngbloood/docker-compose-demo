package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {

	engine := gin.Default()

	engine.Static("/", "./static")
	engine.GET("/api/ping", func(c *gin.Context) {
		c.Writer.Write([]byte(`pong`))
	})

	listen := os.Getenv("port")
	engine.Run(":" + listen)

}

package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {

	engine := gin.Default()

	// healthcheck
	engine.POST("/api/ping", func(c *gin.Context) {
		c.Writer.Write([]byte(`pong`))
	})

	engine.Static("/", "./static")

	listen := os.Getenv("port")
	engine.Run(":" + listen)

}

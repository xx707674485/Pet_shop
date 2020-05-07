// .easymockrc.js
module.exports = {
  output: "api",
  template: "axios",
  projects: [
    {
      id: "5e7c94a33a8ce04607fa1b10",
      name: "IPet", // 生成到 api/user 目录下。
      black: [
        "/query" // 排除 query 接口
      ]
    },
    {
      id: "58fef6ac5e43ae5dbea5eb51",
      name: "top", // 生成到 api/top 目录下。
      white: [
        "/proxy" // 只生成 proxy 接口
      ]
    }
  ]
};
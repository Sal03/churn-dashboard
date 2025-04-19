import React from "react";

const Dashboard = () => {
  return (
    <div
      style={{
        margin: 0,
        padding: 0,
        height: "100vh",
        width: "100vw",
        overflow: "hidden",
      }}
    >
      <iframe
        title="Churn Dashboard"
        src="https://lookerstudio.google.com/embed/reporting/7e6bc72e-fb84-40a2-8b3e-9c57e62088e6/page/A234E"
        width="100%"
        height="100%"
        style={{
          border: "none",
        }}
        allowFullScreen
      ></iframe>
    </div>
  );
};

export default Dashboard;

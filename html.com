<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Forgenest Digital</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: #f4f4f4;
      margin: 0;
      padding: 0;
      color: #333;
    }
    header {
      background: #1a1a1a;
      color: #fff;
      padding: 30px 20px;
      text-align: center;
    }
    section {
      padding: 20px;
      max-width: 800px;
      margin: auto;
    }
    h2 {
      color: #222;
    }
    ul {
      list-style: none;
      padding: 0;
    }
    ul li {
      background: #eaeaea;
      margin: 8px 0;
      padding: 10px;
      border-radius: 5px;
    }
    .contact {
      margin-top: 20px;
    }
    .form-section {
      background: #fff;
      padding: 25px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      margin-top: 40px;
    }
    input, select {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    button {
      background: #1a1a1a;
      color: #fff;
      padding: 12px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background: #444;
    }
    footer {
      background: #1a1a1a;
      color: #ccc;
      text-align: center;
      padding: 20px;
      margin-top: 40px;
      font-size: 0.9em;
    }
    a {
      color: #0066cc;
      text-decoration: none;
    }
  </style>
</head>
<body>

  <header>
    <h1>Forgenest Digital</h1>
    <p>Front-End | Back-End | Full Stack Projects for Companies</p>
  </header>

  <section>
    <h2>Our Services</h2>
    <ul>
      <li>Domain Purchase</li>
      <li>Website Development</li>
      <li>Website Hosting</li>
    </ul>
    <div class="contact">
      <p>📞 +351 963 516 036</p>
      <p>📧 <a href="mailto:mreugene233@gmail.com">mreugene233@gmail.com</a></p>
      <p>🌐 Service strictly online</p>
    </div>
  </section>

  <section class="form-section">
    <h2>Book a Consultation</h2>
    <form action="https://formspree.io/f/https://formspree.io/f/mldoqylw" method="POST">
      <label for="name">Name</label>
      <input type="text" name="name" required />

      <label for="phone">Phone Number</label>
      <input type="tel" name="phone" required />

      <label for="location">Country and City</label>
      <input type="text" name="location" required />

      <label for="service">Service Interested In</label>
      <select name="service" required>
        <option value="">-- Select --</option>
        <option value="Web Development">Web Development</option>
        <option value="Front-End Development">Front-End Development</option>
        <option value="Back-End Development">Back-End Development</option>
        <option value="Full Stack Development">Full Stack Development</option>
      </select>

      <button type="submit">Submit</button>
    </form>
  </section>

  <footer>
    <p>© All rights reserved — <a href="https://Forgenestdigital.org">Forgenestdigital.org</a></p>
  </footer>

</body>
</html>

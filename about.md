---
layout: about
title: About
permalink: /about/
---

<div class="profile-header">
  <img src="{{ site.moving.avatar_url }}" alt="Profile Picture" class="profile-image">
  <div class="profile-info">
    <h1>{{ site.author }}</h1>
    <p class="location">📍 Seoul, South Korea</p>
  </div>
</div>

## 👋 Hello, World!

I'm a developer passionate about building meaningful digital experiences. Based in Seoul, I spend my time creating applications, exploring new technologies, and sharing what I learn along the way.

## 🎯 Philosophy

I believe in building things that matter. Whether it's a simple script that saves time or a complex application that solves real problems, I focus on creating solutions that make a difference. Clean code, thoughtful design, and continuous learning are at the core of my approach.

## 📚 Why This Blog?

This space serves as my digital garden where I document my journey in technology. You'll find posts about:

- **Projects**: Deep dives into things I'm building
- **Research**: Explorations into new technologies and methodologies  
- **Notes**: Quick thoughts and learnings from daily development
- **Analysis**: Breaking down interesting problems and their solutions

## 🤝 Let's Connect

<div class="connect-links">
  <a href="https://github.com/{{ site.moving.social_links.github }}" target="_blank" rel="noopener noreferrer">
    🐙 GitHub
  </a>
  <a href="https://www.linkedin.com/in/{{ site.moving.social_links.linkedin }}/" target="_blank" rel="noopener noreferrer">
    💼 LinkedIn
  </a>
  <a href="https://x.com/dmp100379702" target="_blank" rel="noopener noreferrer">
    🐦 X (Twitter)
  </a>
  <a href="mailto:{{ site.email }}">
    ✉️ Email
  </a>
</div>

<style>
.profile-header {
  display: flex;
  align-items: center;
  margin-bottom: 40px;
  padding: 30px;
  background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
  border-radius: 16px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.profile-image {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin-right: 24px;
  border: 3px solid #fff;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}

.profile-info h1 {
  margin: 0 0 8px 0;
  font-size: 2rem;
  color: #2c3e50;
}

.location {
  margin: 0;
  color: #7f8c8d;
  font-size: 1.1rem;
}

.connect-links {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 16px;
  margin-top: 32px;
}

.connect-links a {
  display: flex;
  align-items: center;
  padding: 16px;
  background: #fff;
  border: 1px solid #e1e8ed;
  border-radius: 12px;
  text-decoration: none;
  color: #2c3e50;
  font-weight: 500;
  transition: all 0.2s ease;
  box-shadow: 0 2px 4px rgba(0,0,0,0.05);
}

.connect-links a:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  border-color: #667eea;
  color: #667eea;
}

@media (max-width: 768px) {
  .profile-header {
    flex-direction: column;
    text-align: center;
    padding: 24px;
  }
  
  .profile-image {
    margin-right: 0;
    margin-bottom: 16px;
  }
  
  .connect-links {
    grid-template-columns: 1fr;
  }
}
</style>

<div align="center">
<picture>
  <source
    media="(prefers-color-scheme: dark)"
    srcset="https://raw.githubusercontent.com/UseTheFork/UseTheFork/output/github-contribution-grid-snake-dark.svg"
  />
  <source
    media="(prefers-color-scheme: light)"
    srcset="https://raw.githubusercontent.com/UseTheFork/UseTheFork/output/github-contribution-grid-snake.svg"
  />
  <img
    alt="github contribution grid snake animation"
    src="https://raw.githubusercontent.com/UseTheFork/UseTheFork/output/github-contribution-grid-snake.svg"
  />
</picture>
</div>

---

```php
<?php

declare(strict_types=1);

namespace App\Domain\Developer;

/**
 * 🍴 UseTheFork
 * 
 * A full-stack developer who turns coffee into code
 */
class UseTheFork extends BaseDeveloper
{

    public function getMood(): string
    {
        return "🤮";
    }

    public function getLanguages(): array
    {
        return [
            'PHP 🐘',
            'Python 🐍',
            'JavaScript 🟨',
            'TypeScript 💙',
            'Nix ❄️',
            'Shell 🐚',
            'HTML5 🌐',
            'CSS3 🎨',
            'Markdown 📝'
          ];
    }

    public function getFrameworks(): array
    {
        return [
            'Laravel ❤️',
            'React ⚛️',
            'FastAPI 🚀',
            'Vite ⚡',
            'Next.js ▲',
            'Node.js 🟢',
            'Tailwind CSS 💨',
            'Bootstrap 🅱️',
            'Sass 💅',
            'MUI 🎭'
            ];
    }

    public function getDatabases(): array
    {
        return [
            'PostgreSQL 🐘',
            'MySQL 🐬',
            'Redis 🔴',
            'Elasticsearch 🔍',
            'Snowflake ❄️'
            ];
    }

    public function getTools(): array
    {
        return [
            'NPM 📦',
            'UV 🚀'
            ];
    }

    public function getAI(): array
    {
        return [
            'OpenAI 🤖',
            'Anthropic 🧠',
            'Google Gemini 💎'
            ];
    }

    public function getSkills(): array
    {
        return [
            'Languages' => $this->getLanguages(),
            'Frameworks' => $this->getFrameworks(),
            'Databases' => $this->getDatabases(),
            'Tools' => $this->getTools(),
            'AI' => $this->getAI(),
        ];
    }
}

```

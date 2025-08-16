<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>E-Learn — App Proposal</title>
  <meta name="description" content="E-Learn is an educational learning app: learn anytime, anywhere with personalized paths, interactive lessons, and progress tracking." />
  <style>
    :root{
      --brand:#0b5bd3;
      --brand-dark:#0646a3;
      --ink:#1f2937;
      --muted:#6b7280;
      --bg:#f6f8fc;
      --card:#ffffff;
      --ok:#22c55e;
      --warn:#f59e0b;
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
      color:var(--ink);
      background:var(--bg);
      line-height:1.7;
    }
    a{color:var(--brand);text-decoration:none}
    .wrap{max-width:1100px;margin:0 auto;padding:0 20px}
    header{
      background:linear-gradient(135deg,var(--brand),var(--brand-dark));
      color:#fff;
      padding:56px 0 32px;
      position:relative;
      overflow:hidden;
    }
    /* Modern logo: Big E sitting on an open book (pure SVG) */
    .logo{
      display:flex;align-items:center;justify-content:center;margin:0 auto 18px auto;
      width:160px;height:120px;
    }
    .brand-title{font-size:2.4rem;margin:4px 0 8px 0;text-align:center}
    .tagline{margin:0;text-align:center;opacity:.95}
    nav{display:flex;gap:16px;justify-content:center;margin-top:18px;flex-wrap:wrap}
    nav a{color:#e8efff;font-weight:600;opacity:.95}
    main{padding:28px 0 60px}
    section{background:var(--card);border-radius:14px;box-shadow:0 10px 24px rgba(15,23,42,.06);padding:26px;margin:18px 0}
    h2{margin:0 0 10px 0;color:var(--brand-dark);font-size:1.4rem}
    p{margin:8px 0 14px 0}
    .grid{display:grid;gap:16px}
    @media (min-width:800px){.grid.cols-2{grid-template-columns:1fr 1fr} .grid.cols-3{grid-template-columns:repeat(3,1fr)}}
    .chip{display:inline-block;background:#eef4ff;border:1px solid #d9e6ff;color:#21468f;padding:3px 10px;border-radius:999px;font-size:12px;margin:2px 6px 2px 0}
    ul.clean{list-style:none;padding:0;margin:8px 0}
    ul.clean li{padding-left:26px;position:relative;margin:8px 0}
    ul.clean li:before{content:"✔";position:absolute;left:0;top:0;color:var(--brand);font-weight:700}
    .stat{
      text-align:center;background:#f9fbff;border:1px solid #e6eeff;border-radius:12px;padding:14px
    }
    .stat b{display:block;font-size:1.25rem}
    .note{font-size:.95rem;color:var(--muted)}
    .cta{
      display:inline-block;background:#fff;color:var(--brand-dark);border:2px solid #d9e6ff;border-radius:10px;
      padding:10px 14px;font-weight:700
    }
    footer{
      background:#0f172a;color:#cbd5e1;padding:26px 0 34px;margin-top:20px
    }
    footer .credits{font-size:.95rem}
    .team{display:flex;flex-wrap:wrap;gap:10px;margin-top:10px}
    .member{
      background:#0b1220;border:1px solid #152238;border-radius:10px;padding:10px 12px
    }
    /* Small helper styles */
    .hr{height:1px;background:#eaeef8;margin:16px 0}
    .kbd{font-family:ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;background:#f3f4f6;border:1px solid #e5e7eb;border-bottom-width:2px;border-radius:6px;padding:2px 6px;font-size:.9em}
  </style>
</head>
<body>
  <header>
    <div class="wrap">
      <div class="logo" aria-label="E-Learn logo: Big E on an open book">
        <!-- Inline SVG logo -->
        <svg viewBox="0 0 320 240" width="160" height="120" role="img" aria-labelledby="logoTitle logoDesc">
          <title id="logoTitle">E-Learn Logo</title>
          <desc id="logoDesc">A bold letter E sitting on an open book</desc>
          <!-- Book base -->
          <defs>
            <linearGradient id="paper" x1="0" x2="1">
              <stop offset="0" stop-color="#ffffff"/>
              <stop offset="1" stop-color="#f4f7ff"/>
            </linearGradient>
          </defs>
          <g transform="translate(20,100)">
            <path d="M0,0 C40,-30 120,-30 160,0 C200,-30 280,-30 320,0 L320,60 C280,30 200,30 160,60 C120,30 40,30 0,60 Z"
                  fill="url(#paper)" stroke="#ccdafc" stroke-width="3" />
            <!-- Spine line -->
            <line x1="160" y1="0" x2="160" y2="62" stroke="#d8e3ff" stroke-width="2" />
          </g>
          <!-- Letter E (card style) -->
          <g transform="translate(100,10)">
            <rect x="-10" y="0" rx="18" ry="18" width="120" height="120" fill="#0b5bd3" />
            <text x="50" y="83" text-anchor="middle" font-size="86" font-weight="800" font-family="Segoe UI, Roboto, Arial" fill="#ffffff">E</text>
          </g>
        </svg>
      </div>
      <h1 class="brand-title">E-Learn</h1>
      <p class="tagline">Educational learning — anytime, anywhere.</p>
      <nav>
        <a href="#about">About</a>
        <a href="#purpose">Purpose</a>
        <a href="#users">Users</a>
        <a href="#features">Features</a>
        <a href="#how">How It Works</a>
        <a href="#benefits">Benefits</a>
        <a href="#security">Security</a>
        <a href="#pricing">Pricing</a>
        <a href="#team">Team</a>
      </nav>
    </div>
  </header>

  <main class="wrap">
    <section id="about">
      <h2>About E-Learn</h2>
      <p><strong>E-Learn</strong> is an educational application that allows users to learn anytime, anywhere. It is designed for students, teachers, and anyone interested in expanding their knowledge. The app offers personalized learning paths, interactive lessons, progress tracking, and access to a vast library of educational resources. It is particularly user-friendly on mobile devices due to its portability and accessibility.</p>
      <div class="grid cols-3">
        <div class="stat"><b>Anytime</b><span class="note">Study that fits your schedule</span></div>
        <div class="stat"><b>Anywhere</b><span class="note">Works great on phones & tablets</span></div>
        <div class="stat"><b>Anyone</b><span class="note">For students, teachers, and professionals</span></div>
      </div>
    </section>

    <section id="purpose">
      <h2>Main Purpose</h2>
      <ul class="clean">
        <li>Provide a convenient and engaging platform for online learning.</li>
        <li>Facilitate access to educational content and resources for users of all ages and backgrounds.</li>
        <li>Offer a personalized learning experience tailored to individual needs and goals.</li>
      </ul>
      <p class="note">In short: clear goals, practical tools, and a smoother path to learning.</p>
    </section>

    <section id="users">
      <h2>Target Users</h2>
      <div class="grid cols-2">
        <div>
          <ul class="clean">
            <li><strong>Students:</strong> Primary, secondary, and higher education.</li>
            <li><strong>Teachers & Educators:</strong> Tools to plan, assign, and track lessons online.</li>
            <li><strong>Lifelong Learners:</strong> Personal development and new interests.</li>
            <li><strong>Professionals:</strong> Upskilling for career growth.</li>
          </ul>
        </div>
        <div>
          <p class="note">Examples: exam review sets, short micro-courses, project-based modules, and certification prep.</p>
          <span class="chip">K–12</span>
          <span class="chip">College</span>
          <span class="chip">TESDA & Vocational</span>
          <span class="chip">Corporate</span>
        </div>
      </div>
    </section>

    <section id="features">
      <h2>Key Features</h2>
      <div class="grid cols-2">
        <div>
          <ul class="clean">
            <li><strong>Personalized Learning Paths:</strong> Tailored content based on goals and progress.</li>
            <li><strong>Interactive Lessons:</strong> Engaging videos, quizzes, and activities.</li>
            <li><strong>Progress Tracking:</strong> Detailed reports and analytics.</li>
            <li><strong>Resource Library:</strong> Articles, videos, and curated materials.</li>
          </ul>
        </div>
        <div>
          <ul class="clean">
            <li><strong>Community Forum:</strong> Ask, share, and learn with others.</li>
            <li><strong>Offline Access:</strong> Download lessons for on-the-go learning.</li>
            <li><strong>Gamification:</strong> Points, badges, and milestones to keep you motivated.</li>
            <li><strong>Notifications:</strong> Reminders, updates, and helpful nudges.</li>
          </ul>
        </div>
      </div>
    </section>

    <section id="how">
      <h2>How It Works</h2>
      <ol>
        <li><strong>Create your profile</strong> and set your learning goals.</li>
        <li><strong>Pick a path</strong> or browse the library for topics you like.</li>
        <li><strong>Learn by doing</strong>—watch, read, and try quick checks after each lesson.</li>
        <li><strong>Track your progress</strong> on a simple dashboard.</li>
        <li><strong>Join the community</strong> to discuss, ask, and collaborate.</li>
      </ol>
      <p class="note">Everything is kept simple: fewer clicks, clearer steps, better focus.</p>
    </section>

    <section id="benefits">
      <h2>Why Learners Choose E-Learn</h2>
      <div class="grid cols-3">
        <div class="stat"><b>Flexible</b><span class="note">Self-paced modules</span></div>
        <div class="stat"><b>Engaging</b><span class="note">Interactive & practical</span></div>
        <div class="stat"><b>Affordable</b><span class="note">Great value for students</span></div>
      </div>
      <p>With bite-sized lessons and clear goals, E-Learn helps you stay consistent and confident. It’s a handy companion for daily study and skill building.</p>
    </section>

    <section id="security">
      <h2>Security & Privacy</h2>
      <ul class="clean">
        <li><strong>Secure sign-in</strong> and encrypted data storage.</li>
        <li><strong>Parental/Instructor controls</strong> for young learners and classes.</li>
        <li><strong>Export & delete</strong> your data anytime from your account settings.</li>
      </ul>
      <p class="note">Your learning data is yours. We keep it safe and easy to manage.</p>
    </section>

    <section id="pricing">
      <h2>Simple Pricing</h2>
      <div class="grid cols-3">
        <div class="stat">
          <b>Starter</b>
          <div class="note">Free</div>
          <div class="hr"></div>
          <div class="note">Core lessons, basic tracking, community access</div>
        </div>
        <div class="stat">
          <b>Plus</b>
          <div class="note">For active learners</div>
          <div class="hr"></div>
          <div class="note">Full library, offline mode, progress analytics</div>
        </div>
        <div class="stat">
          <b>Team/Class</b>
          <div class="note">For schools & groups</div>
          <div class="hr"></div>
          <div class="note">Classrooms, assignments, and shared reports</div>
        </div>
      </div>
      <p class="note">Pricing can be adjusted for schools and organizations through partnerships.</p>
    </section>

    <section id="team">
      <h2>Created By</h2>
      <p>This project was designed and proposed by the E-Learn team:</p>
      <div class="team">
        <div class="member">Peter T. Ancit</div>
        <div class="member">Anna Marie Arche</div>
        <div class="member">Jay Verdida</div>
        <div class="member">Gabrielle de Luna</div>
      </div>
    </section>
  </main>

  <footer>
    <div class="wrap">
      <div class="credits">
        <strong>E-Learn</strong> — Educational learning for everyone. © 2025
        <span class="note"> · Draft proposal website</span>
      </div>
    </div>
  </footer>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade 9 Science & Technology Hub · Nepal</title>
    <style>
        :root {
            --primary: #1e3a8a;
            --primary-light: #3b82f6;
            --accent: #f59e0b;
            --bg-slate: #f8fafc;
            --card-bg: #ffffff;
            --text-dark: #0f172a;
            --text-muted: #64748b;
            --border: #e2e8f0;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
        }

        body {
            background-color: var(--bg-slate);
            color: var(--text-dark);
            line-height: 1.5;
        }

        /* Header Layout */
        header {
            background: linear-gradient(135deg, #0f172a 0%, #1e3a8a 100%);
            color: white;
            padding: 2.5rem 1.5rem;
        }

        .header-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            gap: 1.5rem;
        }

        .header-badge {
            display: inline-block;
            background: rgba(255, 255, 255, 0.15);
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.85rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .header-title h1 {
            font-size: 2.2rem;
            font-weight: 800;
        }

        .header-title h1 span {
            color: var(--accent);
        }

        .header-stats {
            display: flex;
            gap: 1.5rem;
            background: rgba(255, 255, 255, 0.08);
            padding: 1rem 1.5rem;
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .stat-item {
            text-align: center;
        }

        .stat-val {
            font-size: 1.4rem;
            font-weight: 700;
            color: var(--accent);
        }

        .stat-lbl {
            font-size: 0.75rem;
            color: #cbd5e1;
        }

        /* Controls Section */
        .controls-section {
            max-width: 1200px;
            margin: -1.25rem auto 1.5rem;
            padding: 0 1.5rem;
        }

        .search-bar {
            width: 100%;
            padding: 0.85rem 1.25rem;
            border-radius: 10px;
            border: 1px solid var(--border);
            font-size: 1rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
            outline: none;
        }

        .search-bar:focus {
            border-color: var(--primary-light);
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.2);
        }

        /* Main Content Grid */
        main {
            max-width: 1200px;
            margin: 0 auto 3rem;
            padding: 0 1.5rem;
            display: grid;
            grid-template-columns: 2.2fr 1fr;
            gap: 2rem;
        }

        @media (max-width: 868px) {
            main {
                grid-template-columns: 1fr;
            }
        }

        /* Chapter Cards Grid */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1rem;
        }

        .section-header h2 {
            font-size: 1.4rem;
            color: var(--primary);
        }

        .chapter-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 1.25rem;
        }

        .chapter-card {
            background: var(--card-bg);
            border: 1px solid var(--border);
            border-radius: 10px;
            padding: 1.25rem;
            transition: transform 0.2s, box-shadow 0.2s;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .chapter-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.08);
        }

        .unit-tag {
            font-size: 0.7rem;
            font-weight: 700;
            text-transform: uppercase;
            padding: 0.2rem 0.5rem;
            border-radius: 4px;
            display: inline-block;
            margin-bottom: 0.5rem;
            width: fit-content;
        }

        .tag-physics { background: #dbeafe; color: #1e40af; }
        .tag-chemistry { background: #fce7f3; color: #9d174d; }
        .tag-biology { background: #dcfce7; color: #166534; }
        .tag-astronomy { background: #fef3c7; color: #92400e; }
        .tag-tech { background: #e0e7ff; color: #3730a3; }

        .chapter-card h3 {
            font-size: 1.1rem;
            margin-bottom: 0.75rem;
        }

        .resource-links {
            display: flex;
            flex-wrap: wrap;
            gap: 0.4rem;
            margin-top: 1rem;
        }

        .res-btn {
            font-size: 0.75rem;
            padding: 0.35rem 0.6rem;
            border-radius: 5px;
            text-decoration: none;
            background: var(--bg-slate);
            color: var(--text-dark);
            border: 1px solid var(--border);
            transition: all 0.15s;
        }

        .res-btn:hover {
            background: var(--primary-light);
            color: white;
            border-color: var(--primary-light);
        }

        /* Sidebar Panels */
        .sidebar {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .panel {
            background: var(--card-bg);
            border: 1px solid var(--border);
            border-radius: 10px;
            padding: 1.25rem;
        }

        .panel h2 {
            font-size: 1.2rem;
            color: var(--primary);
            margin-bottom: 1rem;
            padding-bottom: 0.5rem;
            border-bottom: 2px solid var(--bg-slate);
        }

        .exam-block {
            margin-bottom: 1rem;
        }

        .exam-title {
            font-size: 0.9rem;
            font-weight: 700;
            margin-bottom: 0.4rem;
            color: var(--text-dark);
        }

        .exam-list {
            list-style: none;
        }

        .exam-list li {
            margin-bottom: 0.35rem;
        }

        .exam-list a {
            color: var(--primary-light);
            font-size: 0.85rem;
            text-decoration: none;
        }

        .exam-list a:hover {
            text-decoration: underline;
        }

        footer {
            text-align: center;
            padding: 2rem;
            background: #0f172a;
            color: #94a3b8;
            font-size: 0.85rem;
        }
    </style>
</head>
<body>

<header>
    <div class="header-container">
        <div class="header-title">
            <span class="header-badge">Class 9 · Nepal Curriculum</span>
            <h1>Grade 9 Science &amp; <span>Technology</span> Hub</h1>
            <p>Access CDC notes, interactive slides, unit tests, and model question sets.</p>
        </div>
        <div class="header-stats">
            <div class="stat-item">
                <div class="stat-val">18</div>
                <div class="stat-lbl">Chapters</div>
            </div>
            <div class="stat-item">
                <div class="stat-val">5</div>
                <div class="stat-lbl">Domains</div>
            </div>
            <div class="stat-item">
                <div class="stat-val">CDC</div>
                <div class="stat-lbl">Aligned</div>
            </div>
        </div>
    </div>
</header>

<div class="controls-section">
    <input type="text" id="searchInput" class="search-bar" placeholder="🔍 Search Grade 9 chapters (e.g., Force, Work, Sound, Atom)..." onkeyup="filterChapters()">
</div>

<main>
    <!-- Left Main Content: Chapter Cards -->
    <section>
        <div class="section-header">
            <h2>Curriculum Chapters</h2>
            <span style="font-size: 0.85rem; color: var(--text-muted);" id="chapterCount">18 topics</span>
        </div>
        
        <div class="chapter-grid" id="chapterGrid">
            
            <!-- Chapter 1 -->
            <div class="chapter-card" data-title="Scientific Learning Measurement">
                <div>
                    <span class="unit-tag tag-physics">Physics</span>
                    <h3>1. Scientific Learning &amp; Measurement</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 2 -->
            <div class="chapter-card" data-title="Force and Motion">
                <div>
                    <span class="unit-tag tag-physics">Physics</span>
                    <h3>2. Force and Motion</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 3 -->
            <div class="chapter-card" data-title="Work, Energy and Power">
                <div>
                    <span class="unit-tag tag-physics">Physics</span>
                    <h3>3. Work, Energy, and Power</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 4 -->
            <div class="chapter-card" data-title="Wave and Sound">
                <div>
                    <span class="unit-tag tag-physics">Physics</span>
                    <h3>4. Wave and Sound</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 5 -->
            <div class="chapter-card" data-title="Electricity and Magnetism">
                <div>
                    <span class="unit-tag tag-physics">Physics</span>
                    <h3>5. Electricity and Magnetism</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 6 -->
            <div class="chapter-card" data-title="Information and Communication Technology ICT">
                <div>
                    <span class="unit-tag tag-tech">Technology</span>
                    <h3>6. Information &amp; Communication Tech (ICT)</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 7 -->
            <div class="chapter-card" data-title="Matter Chemical Structure Periodic Table">
                <div>
                    <span class="unit-tag tag-chemistry">Chemistry</span>
                    <h3>7. Classification of Elements &amp; Periodicity</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 8 -->
            <div class="chapter-card" data-title="Chemical Reaction Bond">
                <div>
                    <span class="unit-tag tag-chemistry">Chemistry</span>
                    <h3>8. Chemical Bonds &amp; Reactions</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 9 -->
            <div class="chapter-card" data-title="Chemicals in Daily Life Acid Base Salt">
                <div>
                    <span class="unit-tag tag-chemistry">Chemistry</span>
                    <h3>9. Chemical Materials in Daily Life</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 10 -->
            <div class="chapter-card" data-title="Gases Carbon Nitrogen Oxygen">
                <div>
                    <span class="unit-tag tag-chemistry">Chemistry</span>
                    <h3>10. Some Useful Gases</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 11 -->
            <div class="chapter-card" data-title="Living Beings Classification Systems">
                <div>
                    <span class="unit-tag tag-biology">Biology</span>
                    <h3>11. Living Beings &amp; Classification</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 12 -->
            <div class="chapter-card" data-title="Cell Adaptation Microorganisms">
                <div>
                    <span class="unit-tag tag-biology">Biology</span>
                    <h3>12. Cell Structure &amp; Microorganisms</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 13 -->
            <div class="chapter-card" data-title="Life Processes Plant Animals">
                <div>
                    <span class="unit-tag tag-biology">Biology</span>
                    <h3>13. Life Processes in Organisms</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 14 -->
            <div class="chapter-card" data-title="Heredity Genetics DNA">
                <div>
                    <span class="unit-tag tag-biology">Biology</span>
                    <h3>14. Heredity &amp; Genetics</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 15 -->
            <div class="chapter-card" data-title="Ecology Environment Ecosystem">
                <div>
                    <span class="unit-tag tag-biology">Biology</span>
                    <h3>15. Ecology &amp; Ecosystem Balance</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 16 -->
            <div class="chapter-card" data-title="Earth History Geology Minerals">
                <div>
                    <span class="unit-tag tag-astronomy">Earth &amp; Space</span>
                    <h3>16. Natural Resources &amp; Geology</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 17 -->
            <div class="chapter-card" data-title="Climate Change Environment Conservation">
                <div>
                    <span class="unit-tag tag-astronomy">Earth &amp; Space</span>
                    <h3>17. Climate Change &amp; Sustainability</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

            <!-- Chapter 18 -->
            <div class="chapter-card" data-title="Universe Solar System Stars">
                <div>
                    <span class="unit-tag tag-astronomy">Earth &amp; Space</span>
                    <h3>18. The Universe &amp; Solar System</h3>
                </div>
                <div class="resource-links">
                    <a href="#" class="res-btn">📖 Notes</a>
                    <a href="#" class="res-btn">📊 Slides</a>
                    <a href="#" class="res-btn">📝 Q&amp;A</a>
                </div>
            </div>

        </div>
    </section>

    <!-- Right Sidebar Content -->
    <aside class="sidebar">
        <!-- Model Question / Exam Paper Section -->
        <div class="panel">
            <h2>Grade 9 Assessment Sets</h2>
            
            <div class="exam-block">
                <div class="exam-title">📌 Model &amp; Specification Grid</div>
                <ul class="exam-list">
                    <li><a href="https://drive.google.com/file/d/1O5LuOJ24L_kXQ0bbszeT5bmnCFdhy2Oc/view?usp=sharing" target="_blank">📄 CDC Specification Grid (Grade 9)</a></li>
                    <li><a href="#" target="_blank">📝 Model Question Paper 2081</a></li>
                </ul>
            </div>

            <div class="exam-block">
                <div class="exam-title">✍️ Terminal Examinations</div>
                <ul class="exam-list">
                    <li><a href="#" target="_blank">📄 First Terminal Question Papers</a></li>
                    <li><a href="#" target="_blank">📄 Mid-Term Practice Sets</a></li>
                    <li><a href="#" target="_blank">📄 Annual District Exam Sample Sets</a></li>
                </ul>
            </div>
        </div>

        <!-- Curriculum & Teacher Resources Section -->
        <div class="panel">
            <h2>Teacher Resources</h2>
            <div class="exam-block">
                <ul class="exam-list">
                    <li><a href="https://drive.google.com/file/d/1O5LuOJ24L_kXQ0bbszeT5bmnCFdhy2Oc/view?usp=sharing" target="_blank">📘 CDC Grade 9 Curriculum (English/Nepali)</a></li>
                    <li><a href="https://drive.google.com/file/d/1WKcl-A069YOOaU71jBJX7pC0PEPJdmdF/view?usp=sharing" target="_blank">📗 Grade 9 Teacher's Guide (TG)</a></li>
                    <li><a href="#" target="_blank">📒 Practical &amp; Project Work Guidelines</a></li>
                </ul>
            </div>
        </div>
    </aside>
</main>

<footer>
    Science &amp; Technology Hub · Grade 9 Curriculum Resources · Nepal
</footer>

<script>
    function filterChapters() {
        const input = document.getElementById('searchInput').value.toLowerCase();
        const cards = document.getElementsByClassName('chapter-card');
        let visibleCount = 0;

        for (let i = 0; i < cards.length; i++) {
            const title = cards[i].getAttribute('data-title').toLowerCase();
            const text = cards[i].innerText.toLowerCase();
            
            if (title.includes(input) || text.includes(input)) {
                cards[i].style.display = "flex";
                visibleCount++;
            } else {
                cards[i].style.display = "none";
            }
        }

        document.getElementById('chapterCount').innerText = visibleCount + " topics";
    }
</script>

</body>
</html>

// Localization Dictionary Matrix
const i18nMatrix = {
    en: {
        navTitle: "Portfolio",
        profileRole: "Administrative and IT Process Analyst",
        profileDesc: "IT Governance and Management Specialist with a background in Business Administration and a focus on Operational Efficiency and GRC (Governance, Risk and Compliance)",
        skillsTitle: "Key Skills",
        experienceTitle: "Professional Experience",
        educationTitle: "Education",
        ytRole: "Multimedia Editor...",
        bfRole: "Risk Analyst...",
        uniRole: "Administrative Assi...",
        dioRole: "IT Specialist",
        postRole: "IT Governance and..."
    },
    pt: {
        navTitle: "Portfólio",
        profileRole: "Analista de Processos Administrativos e TI",
        profileDesc: "Especialista em Governança e Gestão de TI com formação em Administração de Empresas e foco em Eficiência Operacional e GRC (Governança, Riscos e Conformidade)",
        skillsTitle: "Competências Principais",
        experienceTitle: "Experiência Profissional",
        educationTitle: "Formação Acadêmica",
        ytRole: "Editor de Multimídia...",
        bfRole: "Analista de Risco...",
        uniRole: "Assistente Adminis...",
        dioRole: "Especialista em TI",
        postRole: "Governança de TI e..."
    },
    es: {
        navTitle: "Portafolio",
        profileRole: "Analista de Procesos Administrativos y TI",
        profileDesc: "Especialista en Gestión y Gobernanza de TI con experiencia em Administración de Empresas y enfoque en Eficiencia Operativa y GRC",
        skillsTitle: "Competencias Clave",
        experienceTitle: "Experiencia Profesional",
        educationTitle: "Formación Académica",
        ytRole: "Editor Multimedia...",
        bfRole: "Analista de Riesgo...",
        uniRole: "Asistente Adminis...",
        dioRole: "Especialista en TI",
        postRole: "Gobernanza de TI y..."
    }
};

// DOM Handlers
const themeToggleBtn = document.getElementById("theme-toggle");
const themeIconSpan = document.getElementById("theme-icon");
const languageSelect = document.getElementById("lang-selector");
const htmlDoc = document.documentElement;

// Reactive Language Translation Router
function applyLocalization(lang) {
    document.querySelectorAll("[data-i18n]").forEach(node => {
        const key = node.getAttribute("data-i18n");
        if (i18nMatrix[lang] && i18nMatrix[lang][key]) {
            node.textContent = i18nMatrix[lang][key];
        }
    });
    htmlDoc.setAttribute("lang", lang);
}

languageSelect.addEventListener("change", (event) => {
    applyLocalization(event.target.value);
});

// Theme Selector Loop
themeToggleBtn.addEventListener("click", () => {
    const activeTheme = htmlDoc.getAttribute("data-theme");
    const nextTheme = activeTheme === "dark" ? "light" : "dark";
    
    htmlDoc.setAttribute("data-theme", nextTheme);
    themeIconSpan.textContent = nextTheme === "dark" ? "🌙" : "☀️";
});

// Initialize Ecosystem View Setup
applyLocalization("en");

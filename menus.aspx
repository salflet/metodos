<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menus.aspx.cs" Inherits="METODOS.WebForm3" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="css/ptf-dsk-inicio01.css" />
        <link rel="stylesheet" type="text/css" href="css/styleguide.css" />
        <style>
            .fondo_negrita {
                font-weight: bold;
                color: black;
            }

            .frame-2-1 {
                display: none;
                /* Ocultar menú por defecto */
            }

            .boton_salir {
                height: 30px;
                position: relative;
                top: 40%;
            }

            .column_perfil {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 24px;
                width: auto;
            }

            /* Mostrar el menú solo en pantallas grandes */
            @media (min-width: 1025px) {
                .frame-2-1 {
                    display: flex;
                }
            }

            @media screen and (max-width: 480px) {
                .boton_salir {
                    top: -25%;
                    left: 48%;
                }
            }

            .roboto-normal-gravel-16px {
                line-height: initial;
            }
        </style>
    </head>

    <body style="margin: 0; background: #ffffff">
        <form runat="server" class="full-width-form">
            <asp:HiddenField ID="Alumno" runat="server" />
            <div class="container-center-horizontal">
                <div class="ptf-dsk-inicio01 screen">
                    <div class="barra-mens">
                        <div class="frame-2-1">
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server">
                                <img class="icon-home" src="img/ico-home.svg" alt="icon-home" />
                                <span class="inicio roboto-medium-white-14px">Inicio</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server" OnClick="btnComenzar_Click">
                                <div class="icon_"><img class="union" src="img/union-1@2x.svg" alt="Union" /></div>
                                <span class="inicio roboto-medium-white-14px">Simulacro examen</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server"
                                OnClick="btnVerResultados_Click">
                                <img class="icon_" src="img/icon-result.svg" alt="Icon_Result" />
                                <span class="inicio roboto-medium-white-14px">Resultados examen</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server"
                                OnClick="btnSimulacro_Click">
                                <img class="icon_-aptitudes_-test" src="img/icon-aptitudes-test.svg"
                                    alt="Icon_Aptitudes_Test" />
                                <span class="inicio roboto-medium-white-14px">Test por aptitudes</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server"
                                OnClick="btnVerResultados_simulacro_Click">
                                <img class="icono_-aptitud_-result2" src="img/icono-aptitud-result2.svg"
                                    alt="Icono_Aptitud_Result2" />
                                <span class="inicio roboto-medium-white-14px">Resultados por aptitudes</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server"
                                OnClick="btnMostrarApuntes_Click">
                                <img class="ico_-apun" src="img/ico-apun@2x.svg" alt="Ico_Apun" />
                                <span class="inicio roboto-medium-white-14px">Apuntes</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server"
                                href="https://academiametodos.com/calculadora-tropa-marineria/" target="_blank">
                                <img class="icon_" src="img/icon-calc.svg" alt="Icon_Calc" />
                                <span class="inicio roboto-medium-white-14px">Calculadora</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server"
                                OnClick="btnEstadisticas_Click">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25"
                                    fill="none" stroke="white" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="lucide lucide-medal">
                                    <path
                                        d="M7.21 15 2.66 7.14a2 2 0 0 1 .13-2.2L4.4 2.8A2 2 0 0 1 6 2h12a2 2 0 0 1 1.6.8l1.6 2.14a2 2 0 0 1 .14 2.2L16.79 15" />
                                    <path d="M11 12 5.12 2.2" />
                                    <path d="m13 12 5.88-9.8" />
                                    <path d="M8 7h8" />
                                    <circle cx="12" cy="17" r="5" />
                                    <path d="M12 18v-2h-.5" />
                                </svg>
                                <span class="inicio roboto-medium-white-14px">Mi posición</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server" OnClick="btnDestinos_Click">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25"
                                    fill="none" stroke="white" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="lucide lucide-map-pinned">
                                    <path d="M18 8c0 4.5-6 9-6 9s-6-4.5-6-9a6 6 0 0 1 12 0" />
                                    <circle cx="12" cy="8" r="2" />
                                    <path
                                        d="M8.835 14H5a1 1 0 0 0-.9.7l-2 6c-.1.1-.1.2-.1.3 0 .6.4 1 1 1h18c.6 0 1-.4 1-1 0-.1 0-.2-.1-.3l-2-6a1 1 0 0 0-.9-.7h-3.835" />
                                </svg>
                                <span class="inicio roboto-medium-white-14px">Mis destinos</span>
                            </asp:LinkButton>
                            <asp:LinkButton CssClass="botn_-secciones botn_" runat="server"
                                href="https://academiametodos.com/noticias-tropa/" target="_blank">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25"
                                    fill="none" stroke="white" stroke-width="2" stroke-linecap="round"
                                    stroke-linejoin="round" class="lucide lucide-info">
                                    <circle cx="12" cy="12" r="10" />
                                    <path d="M12 16v-4" />
                                    <path d="M12 8h.01" />
                                </svg>
                                <span class="inicio roboto-medium-white-14px">Info de la oposición</span>
                            </asp:LinkButton>
                        </div>
                        <div class="menu-toggle" onclick="toggleMenu()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                fill="none" stroke="white" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round" class="lucide lucide-menu">
                                <line x1="4" x2="20" y1="12" y2="12" />
                                <line x1="4" x2="20" y1="6" y2="6" />
                                <line x1="4" x2="20" y1="18" y2="18" />
                            </svg>
                        </div>
                    </div>
                    <div class="encabezado">
                        <div class="overlap-group4">
                            <a href="https://academiametodos.com"><img class="image-2" src="img/image-2@2x.png"
                                    alt="image 2" /></a>
                            <div class="group-1-1">
                                <img class="image-3" src="img/image-3@2x.png" alt="image 3" />
                                <div class="tropa-y-marinera">Tropa y Marinería</div>
                            </div>
                            <asp:ImageButton runat="server" OnClick="btnSalir_Click" ImageUrl="img/group@2x.png"
                                CssClass="boton_salir" />
                        </div>
                        <div class="rectangle-1"></div>
                    </div>
                    <div class="content">
                        <div class="column">
                            <div class="presentacin">
                                <div class="group-12">
                                    <div class="hola-laura">
                                        <asp:Label ID="lblHola" runat="server" CssClass="hola-laura"></asp:Label>
                                    </div>
                                    <p class="entrate-de-cmo-fun">
                                        <span>Entérate de cómo funciona nuestra plataforma viendo este video o
                                        </span><span class="span1">
                                            <asp:LinkButton CssClass="fondo_negrita" runat="server"
                                                OnClick="btnGuiaRapida_Click">descarga este PDF</asp:LinkButton>
                                        </span>
                                    </p>
                                </div>
                                <div class="group-13">
                                    <div class="frame-11 frame">
                                        <p class="tutorial-cmo-fun roboto-bold-gravel-16px">Tutorial / ¿Cómo funciona
                                            nuestra plataforma?</p>
                                    </div>

                                    <iframe class="rectangle-16" width="360" height="315"
                                        src="https://www.youtube.com/embed/GekFQYfJLmU" title="YouTube video player"
                                        frameborder="0"
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                        allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="column" style="width:20%">
                            <asp:Image runat="server" ImageUrl="img/alargada_telegram.jpeg" Width="18em"
                                Height="33em" />
                        </div>
                        <div class="column">
                            <div class="ultimas-actualizaciones">
                                <div class="frame-10 frame">
                                    <div class="ltimas-actualizaciones roboto-bold-gravel-16px">Últimas actualizaciones
                                    </div>
                                </div>
                                <div class="group-11">

                                    <div class="flex-col">
                                        <div class="date roboto-bold-gravel-16px"><img class="infographic"
                                                src="img/infographic-1.svg" alt="infographic 1" />
                                            <asp:Label ID="fecha1" runat="server"></asp:Label>
                                        </div>
                                        <div class="roboto-normal-gravel-16px">
                                            <p class="desde-hoy-puedes-ver roboto-normal-gravel-16px">
                                                <asp:Label ID="noticia1" runat="server"></asp:Label>
                                            </p>
                                        </div>

                                    </div>
                                </div>
                                <div class="group">

                                    <div class="flex-col">
                                        <div class="date roboto-bold-gravel-16px"><img class="infographic"
                                                src="img/infographic-2.svg" alt="infographic 2" />
                                            <asp:Label ID="fecha2" runat="server"></asp:Label>
                                        </div>
                                        <div class="roboto-normal-gravel-16px">
                                            <p class="desde-hoy-puedes-ver roboto-normal-gravel-16px">
                                                <asp:Label ID="noticia2" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="group">

                                    <div class="flex-col">
                                        <div class="date roboto-bold-gravel-16px"><img class="infographic"
                                                src="img/infographic-3.svg" alt="infographic 3" />
                                            <asp:Label ID="fecha3" runat="server"></asp:Label>
                                        </div>
                                        <div class="roboto-normal-gravel-16px">
                                            <p class="desde-hoy-puedes-ver roboto-normal-gravel-16px">
                                                <asp:Label ID="noticia3" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="group">

                                    <div class="flex-col">
                                        <div class="date roboto-bold-gravel-16px"><img class="infographic"
                                                src="img/infographic-4.svg" alt="infographic 4" />
                                            <asp:Label ID="fecha4" runat="server"></asp:Label>
                                        </div>
                                        <div class="roboto-normal-gravel-16px">
                                            <p class="desde-hoy-puedes-ver roboto-normal-gravel-16px">
                                                <asp:Label ID="noticia4" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="group">

                                    <div class="flex-col">
                                        <div class="date roboto-bold-gravel-16px"><img class="infographic"
                                                src="img/infographic-4.svg" alt="infographic 4" />
                                            <asp:Label ID="fecha5" runat="server"></asp:Label>
                                        </div>
                                        <div class="roboto-normal-gravel-16px">
                                            <p class="desde-hoy-puedes-ver roboto-normal-gravel-16px">
                                                <asp:Label ID="noticia5" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="column_perfil">
                            <div class="perfil">
                                <div class="overlap-group3">
                                    <div class="usuario">

                                        <div class="name valign-text-middle">
                                            <asp:Label ID="apellidos" runat="server"></asp:Label>
                                        </div>
                                        <asp:LinkButton CssClass="botn_-secundario-2 botn_-secundario-5" runat="server"
                                            OnClick="btnPerfil_Click" Text="Ver perfil" />
                                    </div>
                                    <div class="contador">
                                        <div class="te-quedan-en-mtodos valign-text-middle">Te quedan en Métodos</div>
                                        <div class="overlap-group-container-2">
                                            <div class="overlap-group-1">
                                                <div class="number">
                                                    <asp:Label ID="lbldias" runat="server"></asp:Label>
                                                </div>
                                                <div class="das">días</div>
                                            </div>
                                            <div class="overlap-group1">
                                                <div class="number-1">
                                                    <asp:Label ID="lblhoras" runat="server"></asp:Label>
                                                </div>
                                                <div class="horas">horas</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="baremo">
                                        <div class="overlap-group-2">
                                            <div class="te-quedan-en-mtodos valign-text-middle">Mi baremo</div>
                                            <h1 class="text-1">
                                                <asp:label ID="lblbaremo" runat="server"></asp:label>
                                            </h1>

                                        </div>
                                        <asp:LinkButton CssClass="botn_-secundario-3 botn_-secundario-5" runat="server"
                                            href="https://academiametodos.com/baremo-actualizado/" target="_blank"
                                            Text="Calcula tu baremo" />
                                    </div>
                                    <div class="renovar">
                                        <img class="vector" src="img/renueva.png" alt="Vector" />
                                        <asp:LinkButton CssClass="botn_-secundario-4 botn_-secundario-5" runat="server"
                                            Text="Renovar" href="https://academiametodos.com/renovar-tropa"
                                            target="_blank" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var menu = document.querySelector('.frame-2-1');
                // Verifica el tamaño de la pantalla y aplica el estilo adecuado al cargar la página
                if (window.innerWidth > 1024) {
                    menu.style.display = 'flex';  // Menú visible en pantallas grandes
                } else {
                    menu.style.display = 'none';  // Menú oculto en pantallas pequeñas
                }
            });

            function toggleMenu() {
                var menu = document.querySelector('.frame-2-1');
                // Alterna el estado de visibilidad del menú cuando se hace clic en el botón
                menu.style.display = menu.style.display === 'flex' ? 'none' : 'flex';
            }

            window.addEventListener('resize', function () {
                var menu = document.querySelector('.frame-2-1');
                if (window.innerWidth > 1024) {
                    menu.style.display = 'flex';  // Menú visible en pantallas grandes
                } else {
                    menu.style.display = 'none';  // Menú oculto en pantallas pequeñas
                }
            });
        </script>
    </body>

    </html>
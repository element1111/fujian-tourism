// 八闽福建 - 主要JavaScript功能

document.addEventListener('DOMContentLoaded', function() {
    // 确保logo和logo-text始终可见
    ensureLogoVisibility();
    
    // 移动端菜单切换
    const menuToggle = document.querySelector('.menu-toggle');
    const navList = document.querySelector('.nav-list');
    
    if (menuToggle) {
        menuToggle.addEventListener('click', function() {
            navList.classList.toggle('active');
        });
    }
    
    // 滚动时导航栏效果
    window.addEventListener('scroll', function() {
        const header = document.querySelector('.header');
        if (window.scrollY > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
        
        // 滚动显示动画
        revealOnScroll();
        
        // 显示/隐藏回到顶部按钮
        const toTopBtn = document.querySelector('.to-top-link');
        if (toTopBtn) {
            if (window.scrollY > 300) {
                toTopBtn.classList.add('visible');
            } else {
                toTopBtn.classList.remove('visible');
            }
        }
    });
    
    // 平滑滚动到页面顶部
    const toTopBtn = document.querySelector('.to-top-link');
    if (toTopBtn) {
        toTopBtn.addEventListener('click', function(e) {
            e.preventDefault();
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
    }
    
    // 图片延迟加载和错误处理
    const allImages = document.querySelectorAll('img');
    allImages.forEach(function(img) {
        // 处理图片加载错误
        img.addEventListener('error', function() {
            this.classList.add('error');
            if (!this.dataset.fallback) {
                this.src = 'img/default-image.jpg';
                this.dataset.fallback = 'true';
            }
        });
    });
    
    const lazyImages = document.querySelectorAll('.lazy-load');
    if ('IntersectionObserver' in window) {
        const imageObserver = new IntersectionObserver(function(entries, observer) {
            entries.forEach(function(entry) {
                if (entry.isIntersecting) {
                    const img = entry.target;
                    img.src = img.dataset.src;
                    img.classList.remove('lazy-load');
                    imageObserver.unobserve(img);
                }
            });
        });
        
        lazyImages.forEach(function(img) {
            imageObserver.observe(img);
        });
    } else {
        // 回退方案
        let lazyLoadThrottleTimeout;
        
        function lazyLoad() {
            if (lazyLoadThrottleTimeout) {
                clearTimeout(lazyLoadThrottleTimeout);
            }
            
            lazyLoadThrottleTimeout = setTimeout(function() {
                const scrollTop = window.pageYOffset;
                lazyImages.forEach(function(img) {
                    if (img.offsetTop < (window.innerHeight + scrollTop)) {
                        img.src = img.dataset.src;
                        img.classList.remove('lazy-load');
                    }
                });
                if (lazyImages.length == 0) {
                    document.removeEventListener('scroll', lazyLoad);
                    window.removeEventListener('resize', lazyLoad);
                    window.removeEventListener('orientationChange', lazyLoad);
                }
            }, 20);
        }
        
        document.addEventListener('scroll', lazyLoad);
        window.addEventListener('resize', lazyLoad);
        window.addEventListener('orientationChange', lazyLoad);
    }
    
    // 初始化分类筛选
    const filterItems = document.querySelectorAll('.filter-item');
    if (filterItems.length > 0) {
        filterItems.forEach(function(item) {
            item.addEventListener('click', function() {
                // 移除所有活动类
                filterItems.forEach(function(i) {
                    i.classList.remove('active');
                });
                // 添加活动类到当前项
                this.classList.add('active');
            });
        });
    }
    
    // 应用圆形扇面到图片
    applyFanStyling();
    
    // 添加水墨涟漪效果
    addRippleEffect();
    
    // 添加国风装饰元素
    addChineseDecorations();
    
    // 初始化滚动显示动画
    initScrollReveal();
    
    // 添加水墨效果
    addInkSplashes();

    // 在DOM内容加载完毕时触发一次滚动事件，以激活可见区域内的动画
    setTimeout(() => {
        window.dispatchEvent(new Event('scroll'));
        ensureLogoVisibility(); // 再次确保logo可见
        
        // 确保页面标题立即可见
        const pageTitles = document.querySelectorAll('.page-title');
        pageTitles.forEach(function(title) {
            if (title.classList.contains('scroll-reveal')) {
                title.classList.add('visible');
            }
        });
    }, 100);
});

// 页面加载完成后调用
window.addEventListener('load', function() {
    // 重新应用圆形扇面效果，确保所有图片都已加载完成
    applyFanStyling();
});

// 水墨涟漪效果
function addRippleEffect() {
    // 为主内容区域添加涟漪效果
    const mainContent = document.querySelector('.main-content');
    if (!mainContent) return;
    
    mainContent.addEventListener('mousemove', function(e) {
        // 判断是否需要创建新的涟漪（限制频率）
        if (Math.random() > 0.97) {
            createRipple(e.clientX, e.clientY);
        }
    });
    
    // 为卡片单独添加涟漪效果
    const cards = document.querySelectorAll('.card');
    cards.forEach(card => {
        card.addEventListener('mouseenter', function(e) {
            const rect = this.getBoundingClientRect();
            const x = rect.left + rect.width / 2;
            const y = rect.top + rect.height / 2;
            createRipple(x, y);
        });
    });
    
    function createRipple(x, y) {
        const ripple = document.createElement('div');
        ripple.className = 'ripple-effect';
        ripple.style.left = x + 'px';
        ripple.style.top = y + 'px';
        document.body.appendChild(ripple);
        
        // 动画完成后移除元素
        setTimeout(() => {
            ripple.remove();
        }, 1500);
    }
}

// 添加国风装饰元素
function addChineseDecorations() {
    const mainContent = document.querySelector('.main-content');
    if (!mainContent) return;
    
    // 添加背景图案
    const pattern = document.createElement('div');
    pattern.className = 'chinese-pattern';
    document.body.appendChild(pattern);
    
    // 添加顶部右侧装饰
    const decorationTopRight = document.createElement('div');
    decorationTopRight.className = 'chinese-decoration decoration-top-right';
    mainContent.appendChild(decorationTopRight);
    
    // 添加底部左侧装饰
    const decorationBottomLeft = document.createElement('div');
    decorationBottomLeft.className = 'chinese-decoration decoration-bottom-left';
    mainContent.appendChild(decorationBottomLeft);
}

// 添加水墨效果
function addInkSplashes() {
    const mainContent = document.querySelector('.main-content');
    if (!mainContent) return;
    
    // 添加第一个水墨效果
    const inkSplash1 = document.createElement('div');
    inkSplash1.className = 'ink-splash ink-splash-1';
    mainContent.appendChild(inkSplash1);
    
    // 添加第二个水墨效果
    const inkSplash2 = document.createElement('div');
    inkSplash2.className = 'ink-splash ink-splash-2';
    mainContent.appendChild(inkSplash2);
    
    // 为详情页面添加额外的水墨效果
    const detailContainer = document.querySelector('.detail-container');
    if (detailContainer) {
        // 添加特定的水墨效果到详情页
        const detailInkSplash1 = document.createElement('div');
        detailInkSplash1.className = 'ink-splash ink-splash-1';
        detailContainer.appendChild(detailInkSplash1);
        
        const detailInkSplash2 = document.createElement('div');
        detailInkSplash2.className = 'ink-splash ink-splash-2';
        detailContainer.appendChild(detailInkSplash2);
    }
}

// 初始化滚动显示动画
function initScrollReveal() {
    // 添加滚动显示类到需要动画的元素
    const animatedElements = document.querySelectorAll('.card, .page-title, .section-title, .detail-container, .message-form, .message-list, .comment-item, .related-section');
    
    animatedElements.forEach(function(element, index) {
        element.classList.add('scroll-reveal');
        
        // 添加不同的延迟以创建错落效果
        element.style.transitionDelay = (index % 5) * 0.1 + 's';
    });
    
    // 初始检查一次
    revealOnScroll();
}

// 滚动显示动画
function revealOnScroll() {
    const revealElements = document.querySelectorAll('.scroll-reveal');
    const windowHeight = window.innerHeight;
    const revealPoint = 150;
    
    revealElements.forEach(function(element) {
        const elementTop = element.getBoundingClientRect().top;
        
        if (elementTop < windowHeight - revealPoint) {
            element.classList.add('visible');
        } else {
            // 当元素离开视口时，移除visible类以便再次滚动到视图时重新触发动画
            // element.classList.remove('visible'); // 如果希望动画只触发一次，请注释此行
        }
    });
}

// 将圆形扇面应用到卡片图片上
function applyFanStyling() {
    const cardImages = document.querySelectorAll('.card-img');
    
    cardImages.forEach(function(img) {
        // 为每个图片创建容器
        const parent = img.parentNode;
        const container = document.createElement('div');
        container.className = 'card-img-container';
        
        // 将图片移动到容器中
        parent.insertBefore(container, img);
        container.appendChild(img);
    });
}

// 确保logo和logo-text始终可见
function ensureLogoVisibility() {
    const logo = document.querySelector('.logo');
    const logoImg = document.querySelector('.logo img');
    const logoText = document.querySelector('.logo-text');
    
    if (logo && logoImg && logoText) {
        // 强制设置显示属性
        logo.style.display = 'flex';
        logoImg.style.display = 'block';
        logoText.style.display = 'block';
        
        // 确保z-index正确
        logo.style.zIndex = '1001';
        logoText.style.zIndex = '2';
        
        // 监听可能导致logo消失的事件
        window.addEventListener('resize', function() {
            logo.style.display = 'flex';
            logoImg.style.display = 'block';
            logoText.style.display = 'block';
        });
    }
} 
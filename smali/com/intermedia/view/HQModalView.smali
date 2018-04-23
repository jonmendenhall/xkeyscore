.class public abstract Lcom/intermedia/view/HQModalView;
.super Landroid/widget/PopupWindow;
.source "HQModalView.java"


# instance fields
.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field grid1Dimen:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f0700ac
    .end annotation
.end field

.field grid2Dimen:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f0700b6
    .end annotation
.end field

.field grid3Dimen:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f0700bb
    .end annotation
.end field

.field private final parentOverlay:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILandroid/widget/ImageView;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/intermedia/view/HQModalView;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Lcom/intermedia/view/HQModalView;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 34
    invoke-virtual {p0, v1}, Lcom/intermedia/view/HQModalView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 35
    invoke-virtual {p0, p2}, Lcom/intermedia/view/HQModalView;->setFocusable(Z)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/intermedia/view/HQModalView;->setOutsideTouchable(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 41
    iget p2, p0, Lcom/intermedia/view/HQModalView;->grid2Dimen:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/intermedia/view/HQModalView;->setWidth(I)V

    const/4 p1, -0x2

    .line 42
    invoke-virtual {p0, p1}, Lcom/intermedia/view/HQModalView;->setHeight(I)V

    .line 44
    iput-object p3, p0, Lcom/intermedia/view/HQModalView;->parentOverlay:Landroid/widget/ImageView;

    const p1, 0x7f1200f4

    .line 45
    invoke-virtual {p0, p1}, Lcom/intermedia/view/HQModalView;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/intermedia/view/HQModalView;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 55
    iget-object v0, p0, Lcom/intermedia/view/HQModalView;->parentOverlay:Landroid/widget/ImageView;

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Lcom/intermedia/util/AnimationUtils;->fadeAnim(J)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    iget-object v0, p0, Lcom/intermedia/view/HQModalView;->parentOverlay:Landroid/widget/ImageView;

    new-instance v3, Lcom/intermedia/view/HQModalView$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/intermedia/view/HQModalView$$Lambda$0;-><init>(Lcom/intermedia/view/HQModalView;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method disposables()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/intermedia/view/HQModalView;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method final synthetic lambda$dismiss$0$HQModalView()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/intermedia/view/HQModalView;->parentOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showAtParentCenter(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0}, Lcom/intermedia/view/HQModalView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/intermedia/view/HQModalView;->parentOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x11

    .line 63
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/intermedia/view/HQModalView;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

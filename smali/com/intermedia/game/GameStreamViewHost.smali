.class public Lcom/intermedia/game/GameStreamViewHost;
.super Ljava/lang/Object;
.source "GameStreamViewHost.java"


# instance fields
.field fpsLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00c6
    .end annotation
.end field

.field private hideVideoSurfaceWhileLoading:Z

.field streamLoadingIndicator:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01b1
    .end annotation
.end field

.field videoSurface:Landroid/view/SurfaceView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00c9
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/intermedia/game/GameStreamViewHost;->hideVideoSurfaceWhileLoading:Z

    .line 23
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method hideLoadingIndicator()V
    .locals 2

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/intermedia/game/GameStreamViewHost;->hideVideoSurfaceWhileLoading:Z

    .line 38
    iget-object v0, p0, Lcom/intermedia/game/GameStreamViewHost;->streamLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/intermedia/game/GameStreamViewHost;->videoSurface:Landroid/view/SurfaceView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    return-void
.end method

.method resetFpsLabel()V
    .locals 2

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/intermedia/game/GameStreamViewHost;->hideVideoSurfaceWhileLoading:Z

    .line 44
    iget-object v0, p0, Lcom/intermedia/game/GameStreamViewHost;->fpsLabel:Landroid/widget/TextView;

    const-string/jumbo v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method showLoadingIndicator()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/intermedia/game/GameStreamViewHost;->streamLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 31
    iget-boolean v0, p0, Lcom/intermedia/game/GameStreamViewHost;->hideVideoSurfaceWhileLoading:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/intermedia/game/GameStreamViewHost;->videoSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_0
    return-void
.end method

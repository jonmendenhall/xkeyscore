.class Lcom/intermedia/about/RateUsFlow$ViewHost;
.super Ljava/lang/Object;
.source "RateUsFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/about/RateUsFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHost"
.end annotation


# instance fields
.field public final container:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field iLoveHQButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00d9
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0146
    .end annotation
.end field

.field reportIssueButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0158
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/intermedia/about/RateUsFlow$ViewHost;->container:Landroid/view/View;

    .line 48
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

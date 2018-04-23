.class Lcom/intermedia/login/LoginViewHost;
.super Ljava/lang/Object;
.source "LoginViewHost.java"


# instance fields
.field bgObjectsImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a003f
    .end annotation
.end field

.field bgPatternImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0041
    .end annotation
.end field

.field final containerView:Landroid/view/View;

.field debugChannelTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0091
    .end annotation
.end field

.field getStartedButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0046
    .end annotation
.end field

.field signingInProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0146
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 31
    iput-object p1, p0, Lcom/intermedia/login/LoginViewHost;->containerView:Landroid/view/View;

    .line 33
    iget-object p1, p0, Lcom/intermedia/login/LoginViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    sget-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_DURATION:J

    invoke-static {v0, v1}, Lcom/intermedia/util/AnimationUtils;->centeredRotationAnim(J)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    iget-object p1, p0, Lcom/intermedia/login/LoginViewHost;->bgObjectsImageView:Landroid/widget/ImageView;

    sget-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_SLOW_DURATION:J

    invoke-static {v0, v1}, Lcom/intermedia/util/AnimationUtils;->centeredRotationAnim(J)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

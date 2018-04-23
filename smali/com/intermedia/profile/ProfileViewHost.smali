.class public Lcom/intermedia/profile/ProfileViewHost;
.super Ljava/lang/Object;
.source "ProfileViewHost.java"


# instance fields
.field public avatarImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0036
    .end annotation
.end field

.field backgroundImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0041
    .end annotation
.end field

.field public balance:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0037
    .end annotation
.end field

.field public debugChannelTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0091
    .end annotation
.end field

.field public gameLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00ca
    .end annotation
.end field

.field public lifeCountHeartView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00f5
    .end annotation
.end field

.field public lifeCountTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00f6
    .end annotation
.end field

.field public final mainContainer:Landroid/view/ViewGroup;

.field public nextGameContainer:Landroid/support/constraint/ConstraintLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0123
    .end annotation
.end field

.field public nextTimeLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0124
    .end annotation
.end field

.field public prizeAmountLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0143
    .end annotation
.end field

.field public textViewUsername:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01c3
    .end annotation
.end field

.field public watchButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01ed
    .end annotation
.end field

.field public weeklyRank:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01f0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 37
    iput-object p1, p0, Lcom/intermedia/profile/ProfileViewHost;->mainContainer:Landroid/view/ViewGroup;

    .line 39
    iget-object p1, p0, Lcom/intermedia/profile/ProfileViewHost;->backgroundImageView:Landroid/widget/ImageView;

    sget-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_DURATION:J

    invoke-static {v0, v1}, Lcom/intermedia/util/AnimationUtils;->centeredRotationAnim(J)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

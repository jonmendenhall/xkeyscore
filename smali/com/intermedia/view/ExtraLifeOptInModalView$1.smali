.class Lcom/intermedia/view/ExtraLifeOptInModalView$1;
.super Landroid/os/CountDownTimer;
.source "ExtraLifeOptInModalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/view/ExtraLifeOptInModalView;-><init>(Landroid/app/Activity;Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;Lcom/intermedia/model/HQQuestionResult;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/view/ExtraLifeOptInModalView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$durationMs:I


# direct methods
.method constructor <init>(Lcom/intermedia/view/ExtraLifeOptInModalView;JJLandroid/app/Activity;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView$1;->this$0:Lcom/intermedia/view/ExtraLifeOptInModalView;

    iput-object p6, p0, Lcom/intermedia/view/ExtraLifeOptInModalView$1;->val$activity:Landroid/app/Activity;

    iput p7, p0, Lcom/intermedia/view/ExtraLifeOptInModalView$1;->val$durationMs:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 8

    .line 55
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView$1;->this$0:Lcom/intermedia/view/ExtraLifeOptInModalView;

    invoke-static {v0}, Lcom/intermedia/view/ExtraLifeOptInModalView;->access$000(Lcom/intermedia/view/ExtraLifeOptInModalView;)V

    .line 57
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "extraLife_optedIn"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v4, "type"

    const-string v5, "timer"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Pair;

    const-string v4, "duration"

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v6, p0, Lcom/intermedia/view/ExtraLifeOptInModalView$1;->val$durationMs:I

    int-to-long v6, v6

    .line 60
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView$1;->this$0:Lcom/intermedia/view/ExtraLifeOptInModalView;

    iget-object v0, v0, Lcom/intermedia/view/ExtraLifeOptInModalView;->useExtraLifeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView$1;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    .line 50
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const p1, 0x7f11003f

    .line 49
    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

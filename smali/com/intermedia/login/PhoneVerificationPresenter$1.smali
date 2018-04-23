.class Lcom/intermedia/login/PhoneVerificationPresenter$1;
.super Landroid/os/CountDownTimer;
.source "PhoneVerificationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/login/PhoneVerificationPresenter;->startResendCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/login/PhoneVerificationPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/login/PhoneVerificationPresenter;JJ)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter$1;->this$0:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter$1;->this$0:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-static {v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->access$100(Lcom/intermedia/login/PhoneVerificationPresenter;)Lcom/intermedia/login/PhoneVerificationViewHost;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter$1;->this$0:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-static {v1}, Lcom/intermedia/login/PhoneVerificationPresenter;->access$200(Lcom/intermedia/login/PhoneVerificationPresenter;)Lcom/intermedia/model/VerificationId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/model/VerificationId;->callsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/intermedia/login/PhoneVerificationViewHost;->resetResendInputs(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter$1;->this$0:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-static {v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->access$100(Lcom/intermedia/login/PhoneVerificationPresenter;)Lcom/intermedia/login/PhoneVerificationViewHost;

    move-result-object v0

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    const-wide/16 v1, 0x3e8

    .line 209
    div-long/2addr p1, v1

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    .line 210
    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 211
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const v1, 0x7f11016f

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

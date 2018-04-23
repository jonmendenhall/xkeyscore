.class abstract Lcom/intermedia/login/PhoneVerificationReporter;
.super Ljava/lang/Object;
.source "PhoneVerificationReporter.java"


# static fields
.field private static final sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    sput-object v0, Lcom/intermedia/login/PhoneVerificationReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static reportCallMe()V
    .locals 2

    .line 14
    sget-object v0, Lcom/intermedia/login/PhoneVerificationReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "phoneAuth_callMe"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static reportCompleted()V
    .locals 2

    .line 18
    sget-object v0, Lcom/intermedia/login/PhoneVerificationReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "phoneAuth_completed"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static reportError(I)V
    .locals 4

    .line 23
    sget-object v0, Lcom/intermedia/login/PhoneVerificationReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "phoneAuth_error"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const-string v3, "code"

    .line 24
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method static reportResendCode()V
    .locals 2

    .line 28
    sget-object v0, Lcom/intermedia/login/PhoneVerificationReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "phoneAuth_resendCode"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static reportStep(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "step"

    .line 33
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object p0, Lcom/intermedia/login/PhoneVerificationReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "phoneAuth_steps"

    invoke-virtual {p0, v1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

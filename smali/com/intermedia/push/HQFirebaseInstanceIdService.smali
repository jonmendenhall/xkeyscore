.class public final Lcom/intermedia/push/HQFirebaseInstanceIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "HQFirebaseInstanceIdService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method private processIncomingToken(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/intermedia/push/PushEventReporter;->reportTokenRefresh(Z)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/intermedia/push/PushEventReporter;->reportTokenRefreshInvalid()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 1

    .line 14
    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onTokenRefresh()V

    .line 15
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/intermedia/push/HQFirebaseInstanceIdService;->processIncomingToken(Ljava/lang/String;)V

    return-void
.end method

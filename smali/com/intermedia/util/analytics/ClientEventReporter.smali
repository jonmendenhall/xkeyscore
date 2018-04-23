.class public Lcom/intermedia/util/analytics/ClientEventReporter;
.super Ljava/lang/Object;
.source "ClientEventReporter.java"


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# instance fields
.field private final loggers:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/util/analytics/ClientEventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/util/analytics/ClientEventReporter;->loggers:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/intermedia/util/analytics/FBClientEventLogger;

    invoke-direct {v0, p1}, Lcom/intermedia/util/analytics/FBClientEventLogger;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->addLogger(Lcom/intermedia/util/analytics/ClientEventLogger;)V

    .line 31
    new-instance p1, Lcom/intermedia/util/analytics/DebugClientEventLogger;

    invoke-direct {p1}, Lcom/intermedia/util/analytics/DebugClientEventLogger;-><init>()V

    invoke-direct {p0, p1}, Lcom/intermedia/util/analytics/ClientEventReporter;->addLogger(Lcom/intermedia/util/analytics/ClientEventLogger;)V

    return-void
.end method

.method private addLogger(Lcom/intermedia/util/analytics/ClientEventLogger;)V
    .locals 4
    .param p1    # Lcom/intermedia/util/analytics/ClientEventLogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/intermedia/util/analytics/ClientEventReporter;->loggers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/intermedia/util/analytics/ClientEventReporter;->loggers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intermedia/util/analytics/ClientEventLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/intermedia/util/analytics/ClientEventReporter;->loggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static get()Lcom/intermedia/util/analytics/ClientEventReporter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 25
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/intermedia/ApplicationComponent;->getClientEventReporter()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    return-object v0
.end method

.method private referralProperties(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "referral"

    .line 81
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/intermedia/util/analytics/ClientEventReporter;->loggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/util/analytics/ClientEventLogger;

    .line 48
    invoke-interface {v1, p1}, Lcom/intermedia/util/analytics/ClientEventLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/intermedia/util/analytics/ClientEventReporter;->loggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/util/analytics/ClientEventLogger;

    .line 68
    invoke-interface {v1, p1, p2}, Lcom/intermedia/util/analytics/ClientEventLogger;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/util/Pair;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 56
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 57
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_0
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 60
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registrationReferralAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "registration_referralAdded"

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/intermedia/util/analytics/ClientEventReporter;->referralProperties(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

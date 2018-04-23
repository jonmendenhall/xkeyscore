.class interface abstract Lcom/intermedia/util/analytics/ClientEventLogger;
.super Ljava/lang/Object;
.source "ClientEventLogger.java"


# virtual methods
.method public abstract log(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract log(Ljava/lang/String;Landroid/os/Bundle;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

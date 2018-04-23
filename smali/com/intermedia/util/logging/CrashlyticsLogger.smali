.class Lcom/intermedia/util/logging/CrashlyticsLogger;
.super Ljava/lang/Object;
.source "CrashlyticsLogger.java"

# interfaces
.implements Lcom/intermedia/util/logging/DebugLogger;


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 4
    .param p1    # Lcom/intermedia/util/logging/events/LoggableEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "(%s) %s"

    const/4 v1, 0x2

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/intermedia/util/logging/events/LoggableEvent;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    return-void
.end method

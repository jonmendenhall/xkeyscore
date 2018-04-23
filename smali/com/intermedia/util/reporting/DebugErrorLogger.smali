.class Lcom/intermedia/util/reporting/DebugErrorLogger;
.super Ljava/lang/Object;
.source "DebugErrorLogger.java"

# interfaces
.implements Lcom/intermedia/util/reporting/ErrorLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/intermedia/util/reporting/ErrorLog;)V
    .locals 0
    .param p1    # Lcom/intermedia/util/reporting/ErrorLog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

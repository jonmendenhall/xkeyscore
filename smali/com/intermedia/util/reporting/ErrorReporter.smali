.class public Lcom/intermedia/util/reporting/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# static fields
.field private static sInstance:Lcom/intermedia/util/reporting/ErrorReporter;


# instance fields
.field private final loggers:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/util/reporting/ErrorLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intermedia/util/reporting/ErrorReporter;->loggers:Ljava/util/List;

    .line 21
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorReporter;->loggers:Ljava/util/List;

    new-instance v1, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;

    invoke-direct {v1}, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorReporter;->loggers:Ljava/util/List;

    new-instance v1, Lcom/intermedia/util/reporting/DebugErrorLogger;

    invoke-direct {v1}, Lcom/intermedia/util/reporting/DebugErrorLogger;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static get()Lcom/intermedia/util/reporting/ErrorReporter;
    .locals 1

    .line 14
    sget-object v0, Lcom/intermedia/util/reporting/ErrorReporter;->sInstance:Lcom/intermedia/util/reporting/ErrorReporter;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/intermedia/util/reporting/ErrorReporter;

    invoke-direct {v0}, Lcom/intermedia/util/reporting/ErrorReporter;-><init>()V

    sput-object v0, Lcom/intermedia/util/reporting/ErrorReporter;->sInstance:Lcom/intermedia/util/reporting/ErrorReporter;

    .line 17
    :cond_0
    sget-object v0, Lcom/intermedia/util/reporting/ErrorReporter;->sInstance:Lcom/intermedia/util/reporting/ErrorReporter;

    return-object v0
.end method


# virtual methods
.method public logError(Lcom/intermedia/util/reporting/ErrorLog;)V
    .locals 2
    .param p1    # Lcom/intermedia/util/reporting/ErrorLog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorReporter;->loggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/util/reporting/ErrorLogger;

    .line 27
    invoke-interface {v1, p1}, Lcom/intermedia/util/reporting/ErrorLogger;->log(Lcom/intermedia/util/reporting/ErrorLog;)V

    goto :goto_0

    :cond_0
    return-void
.end method

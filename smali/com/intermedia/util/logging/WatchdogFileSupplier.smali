.class public Lcom/intermedia/util/logging/WatchdogFileSupplier;
.super Ljava/lang/Object;
.source "WatchdogFileSupplier.java"

# interfaces
.implements Lcom/intermedia/function/Supplier;


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intermedia/function/Supplier<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sharedPrefs:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier;->sharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getPath()Ljava/io/File;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogFileSupplier;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_shown_show"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 36
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/intermedia/util/logging/WatchdogFileSupplier;->getPath()Ljava/io/File;

    move-result-object v3

    const-string v4, "watchdog"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    :cond_1
    if-eqz v3, :cond_2

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "watchdog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "show_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/intermedia/util/logging/WatchdogFileSupplier;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/util/logging/WatchdogFileSupplier;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

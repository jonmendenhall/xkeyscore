.class public final Lcom/intermedia/injection/ApplicationModule_ProvideApplicationContextFactory;
.super Ljava/lang/Object;
.source "ApplicationModule_ProvideApplicationContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/intermedia/injection/ApplicationModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/injection/ApplicationModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/injection/ApplicationModule_ProvideApplicationContextFactory;->module:Lcom/intermedia/injection/ApplicationModule;

    return-void
.end method

.method public static create(Lcom/intermedia/injection/ApplicationModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/ApplicationModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/intermedia/injection/ApplicationModule_ProvideApplicationContextFactory;

    invoke-direct {v0, p0}, Lcom/intermedia/injection/ApplicationModule_ProvideApplicationContextFactory;-><init>(Lcom/intermedia/injection/ApplicationModule;)V

    return-object v0
.end method

.method public static proxyProvideApplicationContext(Lcom/intermedia/injection/ApplicationModule;)Landroid/content/Context;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/intermedia/injection/ApplicationModule;->provideApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/intermedia/injection/ApplicationModule_ProvideApplicationContextFactory;->module:Lcom/intermedia/injection/ApplicationModule;

    .line 23
    invoke-virtual {v0}, Lcom/intermedia/injection/ApplicationModule;->provideApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/injection/ApplicationModule_ProvideApplicationContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

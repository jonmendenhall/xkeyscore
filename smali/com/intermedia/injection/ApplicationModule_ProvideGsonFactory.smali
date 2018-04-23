.class public final Lcom/intermedia/injection/ApplicationModule_ProvideGsonFactory;
.super Ljava/lang/Object;
.source "ApplicationModule_ProvideGsonFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/gson/Gson;",
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
    iput-object p1, p0, Lcom/intermedia/injection/ApplicationModule_ProvideGsonFactory;->module:Lcom/intermedia/injection/ApplicationModule;

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
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/intermedia/injection/ApplicationModule_ProvideGsonFactory;

    invoke-direct {v0, p0}, Lcom/intermedia/injection/ApplicationModule_ProvideGsonFactory;-><init>(Lcom/intermedia/injection/ApplicationModule;)V

    return-object v0
.end method

.method public static proxyProvideGson(Lcom/intermedia/injection/ApplicationModule;)Lcom/google/gson/Gson;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/intermedia/injection/ApplicationModule;->provideGson()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/gson/Gson;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/intermedia/injection/ApplicationModule_ProvideGsonFactory;->module:Lcom/intermedia/injection/ApplicationModule;

    .line 23
    invoke-virtual {v0}, Lcom/intermedia/injection/ApplicationModule;->provideGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/injection/ApplicationModule_ProvideGsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

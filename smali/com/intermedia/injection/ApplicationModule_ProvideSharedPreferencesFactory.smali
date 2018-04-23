.class public final Lcom/intermedia/injection/ApplicationModule_ProvideSharedPreferencesFactory;
.super Ljava/lang/Object;
.source "ApplicationModule_ProvideSharedPreferencesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/SharedPreferences;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/intermedia/injection/ApplicationModule_ProvideSharedPreferencesFactory;->module:Lcom/intermedia/injection/ApplicationModule;

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
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/intermedia/injection/ApplicationModule_ProvideSharedPreferencesFactory;

    invoke-direct {v0, p0}, Lcom/intermedia/injection/ApplicationModule_ProvideSharedPreferencesFactory;-><init>(Lcom/intermedia/injection/ApplicationModule;)V

    return-object v0
.end method

.method public static proxyProvideSharedPreferences(Lcom/intermedia/injection/ApplicationModule;)Landroid/content/SharedPreferences;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/intermedia/injection/ApplicationModule;->provideSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/intermedia/injection/ApplicationModule_ProvideSharedPreferencesFactory;->module:Lcom/intermedia/injection/ApplicationModule;

    .line 24
    invoke-virtual {v0}, Lcom/intermedia/injection/ApplicationModule;->provideSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/intermedia/injection/ApplicationModule_ProvideSharedPreferencesFactory;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

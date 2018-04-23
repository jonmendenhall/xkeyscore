.class public final Lcom/intermedia/injection/ApplicationModule;
.super Ljava/lang/Object;
.source "ApplicationModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/intermedia/injection/HttpModule;
    }
    subcomponents = {
        Lcom/intermedia/injection/UserComponent;
    }
.end annotation


# instance fields
.field private final application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/intermedia/injection/ApplicationModule;->application:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method provideApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lcom/intermedia/injection/ApplicationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/intermedia/injection/ApplicationModule;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method provideConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/intermedia/injection/ApplicationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "connectivity"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method provideGson()Lcom/google/gson/Gson;
    .locals 2
    .annotation runtime Lcom/intermedia/injection/ApplicationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 54
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/intermedia/libs/AutoParcelAdapterFactory;

    invoke-direct {v1}, Lcom/intermedia/libs/AutoParcelAdapterFactory;-><init>()V

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method provideNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/intermedia/injection/ApplicationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "notification"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    return-object p1
.end method

.method provideSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation runtime Lcom/intermedia/injection/ApplicationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/intermedia/injection/ApplicationModule;->application:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

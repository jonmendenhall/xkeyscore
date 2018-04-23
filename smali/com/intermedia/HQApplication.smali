.class public Lcom/intermedia/HQApplication;
.super Landroid/app/Application;
.source "HQApplication.java"


# instance fields
.field trueTimeInitializer:Lcom/intermedia/initializers/TrueTimeInitializer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    invoke-static {}, Lcom/intermedia/DaggerApplicationComponent;->builder()Lcom/intermedia/DaggerApplicationComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/intermedia/injection/ApplicationModule;

    invoke-direct {v1, p0}, Lcom/intermedia/injection/ApplicationModule;-><init>(Landroid/app/Application;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->applicationModule(Lcom/intermedia/injection/ApplicationModule;)Lcom/intermedia/DaggerApplicationComponent$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/intermedia/DaggerApplicationComponent$Builder;->build()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/intermedia/injection/AppObjectGraph;->set(Lcom/intermedia/ApplicationComponent;)V

    .line 39
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->build()V

    .line 40
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/intermedia/ApplicationComponent;->inject(Lcom/intermedia/HQApplication;)V

    const/4 v0, 0x1

    .line 42
    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 43
    invoke-static {}, Lcom/intermedia/util/SoundEffectsPlayer;->getInstance()Lcom/intermedia/util/SoundEffectsPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intermedia/HQApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/util/SoundEffectsPlayer;->loadSounds(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/intermedia/util/StethoUtils;->initialize(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/intermedia/HQApplication;->trueTimeInitializer:Lcom/intermedia/initializers/TrueTimeInitializer;

    invoke-virtual {v0}, Lcom/intermedia/initializers/TrueTimeInitializer;->run()V

    return-void
.end method

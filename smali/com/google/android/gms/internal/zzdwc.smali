.class public final Lcom/google/android/gms/internal/zzdwc;
.super Lcom/google/android/gms/internal/zzdvv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzdvv<",
        "Lcom/google/android/gms/internal/zzdxt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdxt;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzdxt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v2, Lcom/google/android/gms/internal/zzdxr;->zzmfc:Lcom/google/android/gms/common/api/Api;

    new-instance v4, Lcom/google/firebase/zzb;

    invoke-direct {v4}, Lcom/google/firebase/zzb;-><init>()V

    const-string v0, "com.google.android.gms.firebase_auth"

    invoke-static {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzac(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v0, "com.google.firebase.auth"

    invoke-static {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzab(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzdvv;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/internal/zzdvw;Lcom/google/android/gms/common/api/internal/zzcz;IILjava/util/Map;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "CallbackT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzdxx<",
            "TResultT;TCallbackT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzdwn<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdwn;-><init>(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyk;)Lcom/google/firebase/auth/internal/zzh;
    .locals 1
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzdyk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyk;Z)Lcom/google/firebase/auth/internal/zzh;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyk;Z)Lcom/google/firebase/auth/internal/zzh;
    .locals 6
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzdyk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/firebase/auth/internal/zzf;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/auth/internal/zzf;-><init>(Lcom/google/android/gms/internal/zzdyk;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdyk;->zzbrt()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/google/firebase/auth/internal/zzf;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzdyo;

    invoke-direct {v3, v4}, Lcom/google/firebase/auth/internal/zzf;-><init>(Lcom/google/android/gms/internal/zzdyo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/firebase/auth/internal/zzh;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/internal/zzh;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    invoke-virtual {v1, p2}, Lcom/google/firebase/auth/FirebaseUser;->zzcf(Z)Lcom/google/firebase/auth/FirebaseUser;

    new-instance p0, Lcom/google/firebase/auth/internal/zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdyk;->getLastSignInTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdyk;->getCreationTimestamp()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzi;-><init>(JJ)V

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzh;->zza(Lcom/google/firebase/auth/FirebaseUserMetadata;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdyk;->isNewUser()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzh;->zzci(Z)V

    return-object v1
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyk;)Lcom/google/firebase/auth/internal/zzh;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyk;)Lcom/google/firebase/auth/internal/zzh;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyk;Z)Lcom/google/firebase/auth/internal/zzh;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyk;Z)Lcom/google/firebase/auth/internal/zzh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final setFirebaseUIVersion(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdww;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdww;-><init>(Ljava/lang/String;)V

    const-string p1, "setFirebaseUIVersion"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwu;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/zzdwu;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "sendEmailVerification"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/internal/zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdwy;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "signInWithCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwo;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdwo;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "reauthenticateWithCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxg;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdxg;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "updatePhoneNumber"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/UserProfileChangeRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxh;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdxh;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "updateProfile"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdwt;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "reload"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zza(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwj;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdwj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "getAccessToken"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zza(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwq;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/zzdwq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "reauthenticateWithEmailPassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/internal/zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdxb;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "signInWithPhoneNumber"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdwx;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "signInAnonymously"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ProviderQueryResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwi;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdwi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "fetchProvidersForEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zza(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zzgl(I)V

    new-instance v0, Lcom/google/android/gms/internal/zzdwv;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzdwv;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "sendPasswordResetEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/internal/zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwz;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdwz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "signInWithCustomToken"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwf;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzdwf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "confirmPasswordReset"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwg;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzdwg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "createUserWithEmailAndPassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzo;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/zzo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzo;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdwh;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "delete"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzdyu;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzdyu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/zzdxj;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdxj;-><init>(Lcom/google/android/gms/internal/zzdyu;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "verifyPhoneNumber"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwp;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdwp;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "reauthenticateWithCredentialWithData"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdws;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdws;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "reauthenticateWithPhoneCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxe;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdxe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "updateEmail"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwr;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/zzdwr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "reauthenticateWithEmailPasswordWithData"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwe;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdwe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "checkActionCode"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxa;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzdxa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "signInWithEmailAndPassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwp;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdwp;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "reauthenticateWithPhoneCredentialWithData"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxf;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdxf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "updatePassword"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdwd;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdwd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "applyActionCode"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4277

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdxm;->zzao(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/google/firebase/auth/EmailAuthCredential;

    new-instance v0, Lcom/google/android/gms/internal/zzdwk;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdwk;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "linkEmailAuthCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_2

    check-cast p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    new-instance v0, Lcom/google/android/gms/internal/zzdwm;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdwm;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "linkPhoneAuthCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzdwl;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdwl;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "linkFederatedCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/internal/zzv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4278

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdxm;->zzao(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x4889ba9b

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "password"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzdxd;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzdxd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "unlinkFederatedCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p3, Lcom/google/android/gms/internal/zzdxc;

    invoke-direct {p3}, Lcom/google/android/gms/internal/zzdxc;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzdxx;->zze(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/zzdxx;->zza(Lcom/google/firebase/auth/internal/zzp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "unlinkEmailCredential"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdxi;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzdxi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdxx;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzdxx;

    move-result-object p1

    const-string p2, "verifyPasswordResetCode"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdwc;->zza(Lcom/google/android/gms/internal/zzdxx;Ljava/lang/String;)Lcom/google/android/gms/internal/zzdwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdvv;->zzb(Lcom/google/android/gms/internal/zzdwa;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

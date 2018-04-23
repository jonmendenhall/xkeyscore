.class final Lcom/google/android/gms/internal/zzecm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmqg:Lcom/google/android/gms/internal/zzeck;

.field private synthetic zzmqh:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeck;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecm;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecm;->zzmqh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecm;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecm;->zzmqh:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzecf;->zza(Lcom/google/android/gms/internal/zzecf;Ljava/lang/String;)V

    return-void
.end method

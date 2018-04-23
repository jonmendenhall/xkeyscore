.class final Lcom/google/android/gms/internal/zzckw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic zzjit:Lcom/google/android/gms/internal/zzcku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcku;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckw;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckw;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckw;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckw;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzckg;Landroid/content/ComponentName;)V

    return-void
.end method

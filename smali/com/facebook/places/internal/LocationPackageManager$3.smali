.class final Lcom/facebook/places/internal/LocationPackageManager$3;
.super Ljava/lang/Object;
.source "LocationPackageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->newBluetoothScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/places/internal/LocationPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/places/internal/LocationPackage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v0}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    const/4 v1, 0x0

    .line 164
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v2, v3}, Lcom/facebook/places/internal/ScannerFactory;->newBleScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/BleScanner;

    move-result-object v2

    .line 167
    invoke-interface {v2}, Lcom/facebook/places/internal/BleScanner;->initAndCheckEligibility()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    invoke-interface {v2}, Lcom/facebook/places/internal/BleScanner;->startScanning()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-object v3, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothScanDurationMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :catch_0
    :try_start_3
    invoke-interface {v2}, Lcom/facebook/places/internal/BleScanner;->stopScanning()V

    .line 180
    invoke-interface {v2}, Lcom/facebook/places/internal/BleScanner;->getErrorCode()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 182
    invoke-interface {v2}, Lcom/facebook/places/internal/BleScanner;->getScanResults()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    .line 183
    iput-boolean v4, v0, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LocationPackageManager"

    const-string v5, "Bluetooth LE scan failed with error: %d"

    .line 186
    new-array v4, v4, [Ljava/lang/Object;

    .line 190
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 188
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    iput-boolean v1, v0, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 177
    invoke-interface {v2}, Lcom/facebook/places/internal/BleScanner;->stopScanning()V

    .line 178
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v2

    const-string v3, "Exception scanning for bluetooth beacons"

    .line 195
    invoke-static {v3, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iput-boolean v1, v0, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/facebook/places/internal/LocationPackageManager$3;->call()Lcom/facebook/places/internal/LocationPackage;

    move-result-object v0

    return-object v0
.end method
